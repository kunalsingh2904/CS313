package com.mvc.bean;
//As I have already told it contains only setters and getters

public class CourseBean
{
private String c_id;
private String c_name;
private String grade;
public CourseBean()
{
	
}
public CourseBean(String c_id,String c_name,String grade)
{
	this.c_id=c_id;
	this.c_name=c_name;
	this.grade=grade;
	
}
public String getgrade() {
	return grade;
}
public void setgrade(String grade) {
	this.grade = grade;
}
public String getc_name() {
	return c_name;
}
public void setc_name(String name) {
	this.c_name = name;
}
public String getc_id() {
	return c_id;
}
public void setc_id(String id) {
	this.c_id = id;
}
}