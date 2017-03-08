package com.clinicalpredictor.model;

public class FileInfo {
	private int fileId;
	private User user;
	private String path;
	
	public FileInfo(int fileId, User user, String path) {
		super();
		this.fileId = fileId;
		this.user = user;
		this.path = path;
	}
	
	public FileInfo() {
		
	}

	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public User getUser() {
		return user;
	}
	public void setPath(User user) {
		this.user = user;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
