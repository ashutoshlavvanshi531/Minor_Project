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
			<li><a href = "Profile.jsp">Profile</a></li>
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
                               String q= "select * from Register;";
                               int k=0;
                                       ResultSet rs = st.executeQuery(q);
                                       while(rs.next())
                                       {
%>
<h>Hello netBeans</h>
<center>
<table><tr><td>Hello</td>    <td><%= rs.getString(1)%></td></tr>
<tr>
<td>Mail</td>

<td><%= rs.getString(2)%></td><td><input type="button" value="edit"></td>
</tr>
    </table></center><%
   
                                       }
//                                       if(s4.equals("")){}
                                    //   response.sendRedirect("profile.jsp");
                                            cn.close();
                           }   
                           
                           catch(Exception e)
                           {%><table><th><%
                             out.println(e);
                             out.println(e);
                           response.sendRedirect("Profile.jsp");%></th></table><%
                           }
               
                %>
     </body>
</html>