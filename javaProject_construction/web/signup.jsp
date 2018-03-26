<%-- 
    Document   : signup
    Created on : Mar 20, 2018, 9:22:56 AM
    Author     : Minul Mindula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="signup.css">
    </head>
    <body>
        
       
    <center>
        <div class="signup">
            <form action="signup_" id="regForm" method="post" onsubmit="return validate()">
                
            <center>
                <table border="0" style="width: 100%;" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td colspan="2" style="width: auto;"> 
                                <input type="text" name="username" value="" placeholder="Choose a username" required/><br>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <input type="password" class="fit" id="pass1" name="password"  value="" placeholder="New Password" required/><br>
                            </td>
                            <td>
                                 <input type="password" class="fit" id="pass2" name="password1" value="" placeholder="Retype password" required/><br>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                                <input type="text" style="width: 80%;" name="firstname" value="" placeholder="First name" required/><br>
                            </td>
                            <td>
                                 <input type="text" style="width: 80%;" class="fit" name="lastname" value="" placeholder="Last name" required/><br>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="text" name="email" value="" placeholder="Email address" required/><br>
                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="text" name="mobile" value="" placeholder="Mobile number" required/><br>
                            </td>
                            
                        </tr>
                        <tr>
                            <td colspan="2">
                                 <input type="text" name="occupation" value="" placeholder="Occupation" required/><br>
                
                            </td>
                            
                        </tr>
                        <tr>
                            <td colspan="2">
                             <input type="text" name="company" value="" placeholder="Company" required/><br>
                            </td>
                            
                        </tr>
                       
                        <tr>
                            <td colspan="2">
                                
                                <table border="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td><center><input type="submit" value="Sign up" /></center></td>
                                            <td><center><button onclick="window.location.href='login.jsp'">Back to Sign In</button></center></td>
                                        </tr>
                                    </tbody>
                                </table>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </center>

                
                
            </form>
        </div>
    </center>
    </body>
</html>
