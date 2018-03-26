<%-- 
    Document   : index
    Created on : Mar 14, 2018, 8:33:59 PM
    Author     : Minul Mindula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Construction</title>

    </head>
    <body>
        
      
            
            <%
            session=request.getSession(false);
            if(session.getAttribute("un")==null)
            {
                response.sendRedirect("login.jsp");
            }
            else{
            response.sendRedirect("home.jsp");
            }

            %>
         
    </body>
</html>
