package com.clinicalpredictor.dao;

import java.util.List;

import com.clinicalpredictor.model.FileInfo;
import com.clinicalpredictor.model.User;

public interface FileInfoDAO {
	public boolean uploadFile(User user,String path);
	public List<FileInfo> searchFile(User user);
	FileInfo getFileInfo(int fileId);
}
