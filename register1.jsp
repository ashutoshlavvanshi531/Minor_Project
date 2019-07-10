<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
            
		<link rel = "stylesheet" href = "home.css">
                <script src="ckPwd.js"></script>
        </head>
	<body>
		<ul id = "menu">
			<li><a href = "Home.jsp">Home</a></li>
			<li><a href = "register1.jsp">Register</a></li>
			<li><a href = "About.jsp">About Us</a></li>
			<li><a href = "Contact.jsp">ContactUs</a></li>
		</ul>
              <center> 
                                <form method="post" action ="register2.jsp" ">
                            	<table>
					<p id="rg1" align="center">Register User</p>
				<tr>
                                    <td calspan="2">Enter Name</td><td><input type= "text" placeholder="Enter Name" name="Name" value ="" class="iptxt" required></td>
				</tr>
				<tr>
                                    <td>Enter Email</td><td><input type = "Email" placeholder= "Enter Email" name= "Mail" id="Name" class="iptxt " required></td>
                                </tr>
                                 <tr>
				<td>User Type</td><td>   
                                 <select name="uType" class="iptxt">
                                    <option value="Founder">Founder</option>
                                    <option value="Investor">Investor</option>
                                      <option value="Expert">Expert</option>
                                  </select> </td>
                                </tr>
                                  <tr>
                                       <td>Enter Password</td><td><input type= "Password" placeholder= "Enter Password" id="Pass" name= "Pass" class="iptxt"  required>
                                       </td>
                                </tr>
                                <tr>
                                    <td colspan ="2"><center><input type = "submit" value="Register" name= "submit" id= "new" onclick="pwd()"> </center></td>
                                </tr>   
                         
                                </table>
                   
                                 </form>
              
		
              </center>
                      <div id="page-container">
                            <div id="content-wrap">
				
                            </div>
                            <footer id="footer">
                                <ul>
				<li><a href = "Home.jsp">Home</a></li>
				<li><a href = "Register.html">Register</a></li>
				<li><a href = "About.html">AboutUs</a></li>
				<li><a href = "ContactUs.html">Contact Us</a></li>
				<h1>Copyright©2019</h1>
                                </ul>
                            </footer>
			</div>

                      
	</body>
        
    </html>
