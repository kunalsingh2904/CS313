package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mvc.bean.StudentBean;
import com.mvc.util.DBConnection;
public class StudentDao {
public  ArrayList<StudentBean> getStudentInformation(StudentBean studentbean)
{
	 ArrayList<StudentBean> std = new ArrayList<StudentBean>(); 
	String id=studentbean.getId();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps=null;
String student_id="";
String name="";
String dept_name="";
try
{
con = DBConnection.createConnection(); //establishing connection
String query = "select * from student where id = ?";
ps = con.prepareStatement(query);
ps.setString(1, id);
resultSet = ps.executeQuery();
while(resultSet.next()) // Until next row is present otherwise it return false
{
student_id = resultSet.getString("id"); //fetch the values present in database
name = resultSet.getString("name");
dept_name= resultSet.getString("dept_name");
std.add(new StudentBean(student_id,name,dept_name));
System.out.println(std);
System.out.println(student_id+" "+name+" "+dept_name);
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return std;
}
}