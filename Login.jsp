<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       <link rel = "stylesheet" href = "home.css">
    </head>
    <body>
       <ul id = "menu">
			<li><a href = "Home.jsp">Home</a></li>
			<li><a href = "Register.jsp">Register</a></li>
			<li><a href = "About.jsp">About Us</a></li>
		</ul>
         <center>
                                <form method="post" action ="Login1.jsp">
                            	<table>
					<p>Login User</p>
				<tr>
                                    <td>Enter Email</td><td><input type = "Email" placeholder= "Enter Email" name= "Mail" id="iptxt"></td>
				</tr>
                                 <tr>
                                       <td>Enter Password</td><td><input type= "Password" placeholder= "Enter Password" name= "Pass" id="iptxt">
                                       </td>
                                </tr>
                                <tr>
                                    <td colspan ="2"><center><input type = "submit" value=" Login" id= "new"> </center></td>
                                </tr>   
                         
                                </table>
                   
                                 </form>
              
		
              </center>
     <div id="page-container">
                            <div id="content-wrap">
				
                            </div>
                            <footer id="footer">
                                <ul>
				<li><a href = "home.html">Home</a></li>
				<li><a href = "Register.html">Register</a></li>
				<li><a href = "About.html">AboutUs</a></li>
				<li><a href = "ContactUs.html">Contact Us</a></li>
				<h1>Copyright©2019</h1>
                                </ul>
                            </footer>
			</div>
    </body>
</html>
