<%@ page import = "java.util.*;" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*;"%>
<%@page import= "javax.servlet.*;" %>
<%@page import= "javax.servlet.http.*;" %>
<html>
     <head>
       <link rel = "stylesheet" href = "home.css">
    </head>
    <body>
         <ul id = "menu">
			<li><a href = "Home.jsp">Home</a></li>
			<li><a href = "About.html">AboutUs</a></li>
                        <li><a href = "ContactUs.html">Contact Us</a></li>
				
		</ul>
        

<%
                           try
                           {        
                               String durl= "jdbc:mysql://localhost:3306/minor27? useSSL=false";
                               String dname = "root";
                               String dpass = "root";
                               
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection cn= DriverManager.getConnection(durl,dname,dpass);
                               Statement st= cn.createStatement();
                                String q= "select * from fsData where cat='Small businesses, usually family owned and run'";
                                
                                       ResultSet rs = st.executeQuery(q);
                                       while(rs.next())
                                       {
%>
<h></h>
<center>
<table>
<tr>
<td>Mail</td>

    <td><%= rs.getString(1)%></td>
</tr>
<tr>
<td>cat</td>

    <td><%= rs.getString(3)%></td>
</tr>
<tr>
<td>sector</td>

    <td><%= rs.getString(4)%></td>
</tr>
<tr>
<td>uniqueness</td>

    <td><%= rs.getString(5)%></td>
</tr>
<tr>
<td>stage</td>

    <td><%= rs.getString(6)%></td>
</tr>
<tr>
<td>fund</td>

    <td><%= rs.getString(7)%></td>
</tr>
<tr>
<td>plan</td>

    <td><%= rs.getString(8)%></td>
</tr>

    </table></center><%
   
                                       }
//                                       if(s4.equals("")){}
//                                       response.sendRedirect("profile.jsp");
                                            cn.close();
                           }   
                           
                           catch(Exception e)
                           {%><table><th><%
                             out.println(e);
//                           response.sendRedirect("Home.jsp");
                           %></th></table><%
                           }
               
                %>
     </body>
</html>