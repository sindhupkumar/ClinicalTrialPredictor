package com.clinicalpredictor.model;

public class Task {
	private int taskId;
	private User user;
	private FileInfo trialFileInfo;
	private FileInfo transFileInfo;
	private FileInfo testFileInfo;
	private FileInfo networkFileInfo;
	private FileInfo resultFileInfo;
	
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public FileInfo getTrialFileInfo() {
		return trialFileInfo;
	}
	public void setTrialFileInfo(FileInfo trialFileInfo) {
		this.trialFileInfo = trialFileInfo;
	}
	public FileInfo getTransFileInfo() {
		return transFileInfo;
	}
	public void setTransFileInfo(FileInfo transFileInfo) {
		this.transFileInfo = transFileInfo;
	}
	public FileInfo getTestFileInfo() {
		return testFileInfo;
	}
	public void setTestFileInfo(FileInfo testFileInfo) {
		this.testFileInfo = testFileInfo;
	}
	public FileInfo getNetworkFileInfo() {
		return networkFileInfo;
	}
	public void setNetworkFileInfo(FileInfo networkFileInfo) {
		this.networkFileInfo = networkFileInfo;
	}
	public FileInfo getResultFileInfo() {
		return resultFileInfo;
	}
	public void setResultFileInfo(FileInfo resultFileInfo) {
		this.resultFileInfo = resultFileInfo;
	}
}
