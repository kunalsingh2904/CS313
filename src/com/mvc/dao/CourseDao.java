
package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mvc.bean.CourseBean;
import com.mvc.util.DBConnection;
public class CourseDao {
public  ArrayList<CourseBean> getCourseInformation(CourseBean Coursebean)
{
	 ArrayList<CourseBean> std = new ArrayList<CourseBean>(); 
	String id=Coursebean.getc_id();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps=null;
String course_id="";
String course_name="";
String grade="";
try
{
con = DBConnection.createConnection(); //establishing connection
String query = "select * from takes natural join course where id = ?";
ps = con.prepareStatement(query);
ps.setString(1, id);
resultSet = ps.executeQuery();
while(resultSet.next()) // Until next row is present otherwise it return false
{
course_id = resultSet.getString("course_id"); //fetch the values present in database
course_name = resultSet.getString("title");
grade= resultSet.getString("grade");
std.add(new CourseBean(course_id,course_name,grade));
System.out.println(std);
System.out.println(course_id=" "+course_name+" "+grade);
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return std;
}
}