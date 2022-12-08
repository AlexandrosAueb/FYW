<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html lang="en">

    <head>
	    <%@ include file="header.jsp" %>
        <title>
            Find Your Way
        </title>
    </head>

	<body class="g-sidenav-show  bg-gray-200">
      

      <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

			<!-- Page Title -->
			<div class="page-header">
				<h1>Oops something went wrong</h1>
			</div>
            
            <div class="row">

				<div class="col-xs-12">

					<h2>Description</h2>

					<% if(exception != null) { %>	                  	
						<p><code><%=exception %></code></p>						
					<% } %>		

				</div>

			</div> 
			
      </main>
	</body>
</html>
