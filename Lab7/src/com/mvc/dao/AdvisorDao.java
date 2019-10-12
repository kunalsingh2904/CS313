
package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mvc.bean.AdvisorBean;
import com.mvc.util.DBConnection;
public class AdvisorDao {
public  ArrayList<AdvisorBean> getAdvisorInformation(AdvisorBean studentbean)
{
	 ArrayList<AdvisorBean> std = new ArrayList<AdvisorBean>(); 
	String id=studentbean.gets_id();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps=null;
String s_id="";
String i_id="";
String i_name="";
try
{
con = DBConnection.createConnection(); //establishing connection
String query = "select * from advisor,instructor where advisor.i_id=instructor.id and advisor.s_id = ?";
ps = con.prepareStatement(query);
ps.setString(1, id);
resultSet = ps.executeQuery();
while(resultSet.next()) // Until next row is present otherwise it return false
{
s_id = resultSet.getString("s_id"); //fetch the values present in database
i_id = resultSet.getString("i_id");
i_name= resultSet.getString("name");
std.add(new AdvisorBean(s_id,i_id,i_name));
System.out.println(std);
System.out.println(s_id+" "+i_id+" "+i_name);
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return std;
}
}
