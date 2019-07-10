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
			<li><a href = "category.jsp">category</a></li>
			<li><a href = "About.jsp">About Us</a></li>
			<li><a href = "Contact.jsp">ContactUs</a></li>
		</ul>
              <center> 
                                <form method="post" action ="fonProfile1.jsp" ">
                            	<table>
					<p id="rg1" align="center">Enter Startup Details</p>
                                <tr>    <td>Enter Email</td><td><input type = "Email" placeholder= "Enter Email" name= "Mail" id="Name" class="iptxt " required></td>
                                </tr>
                              
                                  <tr>
                                       <td>Enter Password</td><td><input type= "Password" placeholder= "Enter Password" id="Pass" name= "Pass" class="iptxt"  required>
                                       </td>
                                </tr>
                                    <tr>
				<td>Category</td><td>   
                                 <select name="cat" class="iptxt">
                                        <option value="Small businesses, usually family owned and run">Small businesses, usually family owned and run</option>
                                    <option value="Silicon Valley-type startups ? designed to be scalable">Silicon Valley-type startups ? designed to be scalable</option>
                                      <option value="Startups designed to be quickly sold, flipped">Startups designed to be quickly sold, flipped</option>
                                      <option value="Large company startups">Large company startups</option>
                                      <option value="Sc-st">Social startups ? usually some form of charitable foundation</option>
                                  </select> </td>
                                </tr>
                    
                                              <tr>
                                       <td>Enter Startup Sector</td><td><input type= "text" id="Pass" name= "sec" class="iptxt"  required>
                                       </td>
                                </tr>
                                  <tr>
                                       <td>UniqueNess Of your Startup.</td><td><input type= "text" id="Pass" name= "uniq" class="iptxt"  required>
                                       </td>
                                </tr>
                                  <tr>
                                       <td>Stage Of your Startup</td><td><input type= "text"  id="Pass" name= "stage" class="iptxt"  required>
                                       </td>
                                </tr>
                                  <tr>
                                       <td>Fund Expectation</td><td><input type= "text" id="Pass" name= "fund" class="iptxt"  required>
                                       </td>
                                </tr>
                    <tr>
                                    <td>Plan to scale team in next 12 month</td><td><input type="text" value="" name="plan" class ="iptxt"></td>
                                </tr>
                                <tr>
                                    <td colspan ="2"><center><input type = "submit" value="Submit" name= "submit" id= "new" onclick="pwd()"> </center></td>
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
