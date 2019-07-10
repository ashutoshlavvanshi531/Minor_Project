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
			<li><a href = "category1.jsp">category</a></li>
		</ul>
        

<%
                           String q="";
                           String s1 = request.getParameter("Mail");
                           String s2 = request.getParameter("Pass"); 
                           
                                      
                           try
                           {        
                               String durl= "jdbc:mysql://localhost:3306/minor27? useSSL=false";
                               String dname = "root";
                               String dpass = "root";
                               
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection cn= DriverManager.getConnection(durl,dname,dpass);
                               Statement st= cn.createStatement();
                                q= "select * from Register where Mail='"+s1+"' and Paas='"+s2+"';";
                                
                                       ResultSet rs = st.executeQuery(q);
                                       if(rs.next())
                                       {
%>
<h></h>
<center>
<table><tr><td>Name</td>    <td><%= rs.getString(1)%></td></tr>
<tr>
<td>Mail</td>

    <td><%= rs.getString(2)%></td>
</tr>
<tr>
<td>Password</td>

    <td><%= rs.getString(3)%></td>
</tr>
<tr>
<td>UserType</td>

    <td><%= rs.getString(4)%></td>
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