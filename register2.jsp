<%@ page import = "java.util.*;" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*;"%>
<%@page import= "javax.servlet.*;" %>
<%@page import= "javax.servlet.http.*;" %>

<%
            String s1,s2,s3,s4,s5;
                          
                            s1 = request.getParameter("Name");
                            s2 = request.getParameter("Mail");
                            s3 = request.getParameter("Pass"); 
                            s4 = request.getParameter("uType");
                                    
                                try
                           {        
                               String durl= "jdbc:mysql://localhost:3306/minor27?useSSL=false";
                               String dname = "root";
                               String dpass = "root";
                               
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection cn= DriverManager.getConnection(durl,dname,dpass);
                               Statement st= cn.createStatement();
                               String q="";
                                q= "insert into register values('"+s1+"','"+s2+"','"+s3+"','"+s4+"');";
                              if(s4.equals("Founder"))
                              {
                                st.executeUpdate(q);
                                  response.sendRedirect("fonProfile.jsp");

                              }
                                 else
                              {
                                  st.executeUpdate(q);
                                  %><h3>Registration Successful. </h3><%
                              }
                            }
                             
                           catch(java.sql.SQLIntegrityConstraintViolationException e1)
                           {
                               %><h4>entered email is already present</h4><%
                           }
                           catch(Exception e)
                           {
                           out.println(e);
                           }
               
                         
                %>