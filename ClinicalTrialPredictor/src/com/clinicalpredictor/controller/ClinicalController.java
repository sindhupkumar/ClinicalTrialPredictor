package com.clinicalpredictor.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.clinicalpredictor.model.User;
import com.clinicalpredictor.service.ClinicalService;
import com.clinicalpredictor.util.Validate;

@Controller
@RequestMapping(value = "/*.do", method = RequestMethod.POST)
public class ClinicalController {
	
	private ModelAndView modelAndView;
	private ClinicalService userService;
	private HttpSession session ;
	//private final String UPLOAD_DIRECTORY = "../../temp/";
    private final String UPLOAD_DIRECTORY = "C:/Users/Sindhu/Documents/UMB-3rd Sem/CS682/web/";
	
	public ClinicalController() {
		System.out.println("Entered");
		/*AbstractApplicationContext factory = new ClassPathXmlApplicationContext(
		"clinicalConfig.xml");
		setUserService((UserService) factory.getBean("userService"));	*/
	}
	
	@RequestMapping("/registerUser.do")
	public ModelAndView registerUser(HttpServletRequest request,
			HttpServletResponse response) {
		modelAndView = new ModelAndView();
		
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setFirstname(request.getParameter("firstname"));
		user.setLastname(request.getParameter("lastname"));
		user.setEmail(request.getParameter("email"));
		boolean created = userService.createUser(user);
		String key ="";
		if (created) {
            modelAndView.addObject("sucessreg","Successfully registered!! Login with your new username and password");
            key = "index.jsp";
		} else {	
			modelAndView.addObject("failurereg","Registration is failed Try again!!");
			key = "login.jsp";
		}
		modelAndView.setViewName(key);
		return modelAndView;
	}
	
	@RequestMapping("/login.do")
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response) {
		session = request.getSession(true);
		modelAndView = new ModelAndView();
		String key = "";
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		User user = userService.searchUser(username, password);
		session.setAttribute("user", user);
		key = "index.jsp";
		if (user == null) {
			String message="Oops Login failed,Invalid user!! Please enter valid username and password";
			modelAndView.addObject("message",message);
			key = "login.jsp";
		}
		modelAndView.setViewName(key);
		return modelAndView;
	}
	
	@RequestMapping("/upload.do")
	public ModelAndView validateAndUploadFile(HttpServletRequest request, HttpServletResponse response) {
	    //Create a new modelView Object
		//TODO get the file type from JSP and validate according to the type recieved 
	    modelAndView = new ModelAndView();
		String message = null;
		String name = null;
		Validate v = new Validate();
		String view = "index.jsp";
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
       				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
       				for (FileItem item : multiparts) {
       					if (!item.isFormField()) {
       					    name = new File(item.getName()).getName();
       					    item.write(new File(UPLOAD_DIRECTORY + name));
       					}
       				}
       				int a = 0;
       				if (name != null)
					a = v.txt_validate(UPLOAD_DIRECTORY + name);
       				if (a == 1) {
       					message = "File Uploaded Successfully";
       					view = "radialTree/index.html";
       					} else {
       						message = "File you have uploaded is Invalid";
       						}
					} catch (Exception ex) {
							ex.printStackTrace();
							System.out.println(ex);
							message =  "Exception Occured while uploading the File" + ex;
				}
			} else {	
				   message = "Sorry It is not a MultipartFile";
				}
				modelAndView.setViewName(view);
				modelAndView.addObject("message", message);
				return modelAndView;
		}

	public ClinicalService getUserService() {
		return userService;
	}

	public void setUserService(ClinicalService userService) {
		this.userService = userService;
	}
}