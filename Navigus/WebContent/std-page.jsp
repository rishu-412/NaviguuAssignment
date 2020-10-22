
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>NAVIGUS | STUDENT PORTAL</title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body>
	<div class="top-area">
		<center><h2>Student Panel</h2></center> 
		<div style="background : red; height: 5px; widht:100%"></div>
		<a href="controller.jsp?page=logout" class="button" style="float: right;background:red;color:white; padding:10px;">Logout</a>
	</div>
    
    <%
            if(session.getAttribute("userStatus")!=null){
           if(session.getAttribute("userStatus").equals("1")){
            %>
            	
            <div class="menu">
            <a href="std-page.jsp?pgprt=0" class="button">profile</a>
            <a class="button" href="std-page.jsp?pgprt=1">exams</a>
            <a class="button" href="std-page.jsp?pgprt=2">results</a>
            <a href="controller.jsp?page=logout" class="button"  style="float: right;background:red;color:white; padding:10px;">Logout</a>
            </div>
            <% 
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="exam.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="results.jsp"/>
                
                <%
                
            }else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
           </body>
</html>
            
