
package com.mvc.bean;



//As I have already told it contains only setters and getters

public class AdvisorBean
{
private String s_id;
private String i_id;
private String i_name;
public AdvisorBean()
{
	
}
public AdvisorBean(String s_id,String i_id,String i_name)
{
	this.s_id=s_id;
	this.i_id=i_id;
	this.i_name=i_name;
	
}
public String geti_name() {
	return i_name;
}
public void seti_name(String dept_name) {
	this.i_name = dept_name;
}
public String geti_id() {
	return i_id;
}
public void seti_id(String name) {
	this.i_id = name;
}
public String gets_id() {
	return s_id;
}
public void sets_id(String id) {
	this.s_id = id;
}


}