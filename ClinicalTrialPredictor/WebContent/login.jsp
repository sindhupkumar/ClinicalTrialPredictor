<%@ taglib prefix="jstlcore" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
	function validateLoginForm() {
		var uname = document.forms["loginForm"]["uname"].value;
		var pwd = document.forms["loginForm"]["pwd"].value;
		if (uname == null || uname == "") {
			alert("Username cannot be empty ");
			return false;
		}
		if (pwd == null || pwd == "") {
			alert("Enter the password");
			return false;
		}
	}
	function validateRegisterForm() {
		var username = document.forms["RegisterForm"]["username"].value;

		if (username == null || username == "") {
			alert("Username cannot be empty");
			return false;
		}

		var password = document.forms["RegisterForm"]["password"].value;
		if (password == null || password == "") {
			alert("Password cannot be empty");
			return false;
		}

		var c = document.forms["RegisterForm"]["firstname"].value;
		if (c == null || c == "") {
			alert("First Name cannot be empty");
			return false;
		} else {
			var exp = /^[A-Za-z]+$/;
			if (!(c.match(exp))) {

				alert("Enter Valid firstname!Only alphabets allowed");
				return false;
			}
		}

		var lastname = document.forms["RegisterForm"]["lastname"].value;
		if (lastname == null || lastname == "") {
			alert("Last Name cannot be empty");
			return false;
		} else {
			var expr = /^[A-Za-z]+$/;
			if (!(lastname.match(expr))) {

				alert("Enter Valid lastname!Only alphabets allowed");
				return false;
			}
		}
		var email = document.forms["RegisterForm"]["email"].value;
		at = email.indexOf("@");
		dot = email.indexOf(".");
		if (email.length <= 0) {
			alert("Email field is blank!");
		} else if (at <= 0 || (at == (email.length) - 1)) {
			alert("Email entered is invalid");
		} else if (dot <= 0 || (dot == (email.length) - 1)) {
			alert("Email entered is invalid");
		} else if ((email.indexOf(".")) == (email.indexOf("@")) + 1) {
			alert("Email entered is invalid");
		}

	}
	
	function validateCancelForm()
	{
		return b=confirm ("Are you sure you want to Cancel Registration?");
	}
</script>
</head>
	<table width="100%" align="left" background="images1/header-bg1.jpg">
		<tr>
			<td>
				<table bgcolor="" align="left" width="100%">
					<tr>
						<td align="center"><br>
							<h1>
								<font face="Pristina , Arial"><p style="color:white">Clinical Prediction Login Page</p></font>
							</h1></td>
							
							<form action="login.do" name="loginForm"
								onsubmit="return validateLoginForm()" method="post">
						<td>
							
								<th align="right"><p style="color:white">UserName</p></th>
								<td><input type="text" name="uname"></td>
								<th align="right"><p style="color:white">Password</p></th>
								<td><input type="password" name="pwd"></td>
								<th><input type="submit" value="LOGIN"></th>
							</form>
					</tr>
				</table>
			</td>
		</tr>
		<tr background="">
			<td>

				<table width="100%">
					<tr>
						<th></th>
						<td align="right"><p
								style="font-family: times new roman; color: red;">
								<jstlcore:out value="${sucessreg}"></jstlcore:out>
								<jstlcore:out value="${message}"></jstlcore:out>
								<jstlcore:out value="${newpassword}"></jstlcore:out>
							</p></td>
					</tr>
					<tr>
					<th></th>
						<th><h3>
								<font face="Pristina , Arial">
									<p style="color:white"><br>New Visitor? Register yourself to Upload and get Prediction on your Clinical Trials!!
									</p></font>
							</h3></th></tr>
				</table>
			</td>

		</tr>
		<tr background="">
				<th> <table align="center">
				 <form action="registerVisitor.do" name="RegisterForm"
			onsubmit="return validateRegisterForm()" method="post">
						<tr>
							<th align="left" bgcolor="transparent"><p style="color:white">User Name:</p></th>
							<th align="left"> <input type="text"
								name="username"></th>
						</tr>
						<tr>
							<th align="left" bgcolor="transparent"><p style="color:white">Password:</p></th>
							<th align="left"><input type="text" name="password"></th>
						</tr>
						<tr>
							<th align="left" bgcolor=""><p style="color:white">First Name:</p></th>
							<th align="left"><input type="text" name="firstname"></th>
						</tr>
						<tr>
							<th align="left" bgcolor=""><p style="color:white">Last Name:</p></th>
							<th align="left"><input type="text" name="lastname"></th>
						</tr>

						<tr>
							<th align="left" bgcolor=""><p style="color:white">Email-id:</p></th>
							<th align="left"><input type="text" name="email"></th>
						</tr>
						<tr>
							<td></td>
							<td align="left"><input type="submit" value="Register">
								</form></td>
						<tr>
							<th></th>
							<td align="left">
								<form action="index.jsp" onsubmit="return validateCancelForm()">
									<input type="submit" value="Cancel">
								</form>
							</td>
						</tr>

						<tr>
							<td>
							<th class="style"><jstlcore:out value="${failurereg}"></jstlcore:out></th>
						</tr>
					</table></th>
			</tr>
		</form>
	</table>
</body>