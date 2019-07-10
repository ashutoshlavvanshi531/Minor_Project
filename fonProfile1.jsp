<%@ page import = "java.util.*;" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*;"%>
<%@page import= "javax.servlet.*;" %>
<%@page import= "javax.servlet.http.*;" %>

<%
            String s1,s2,s3,s4,s5,s6,s7,s8;
                            s1 = request.getParameter("Mail");
                            s2 = request.getParameter("pass");
                            s3 = request.getParameter("cat"); 
                            s4 = request.getParameter("sec");
                            s5 = request.getParameter("uniq");
                            s6 = request.getParameter("stage");
                            s7 = request.getParameter("fund");
                            s8 = request.getParameter("plan");
                                    
                                try
                           {        
                               String durl= "jdbc:mysql://localhost:3306/minor27?useSSL=false";
                               String dname = "root";
                               String dpass = "root";
                               
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection cn= DriverManager.getConnection(durl,dname,dpass);
                               Statement st= cn.createStatement();
                               String q="";
                                q= "insert into fsData values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"');";
                                 st.executeUpdate(q);
                                response.sendRedirect("Login.jsp");
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