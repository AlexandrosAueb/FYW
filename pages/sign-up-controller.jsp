<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="fyw.*" %>

<!DOCTYPE html>
<html lang="en">

    <head>
	    <%@ include file="header.jsp" %>
        <title>
            Find Your Way
        </title>

    </head>
	
	<body class="g-sidenav-show  bg-gray-200">
		<aside
    class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark"
    id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
        aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="../pages/dashboard.jsp">
        <img src="../assets/img/fyw-logo.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold text-white"> Find Your Way </span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="../pages/dashboard.jsp">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="../pages/orders.jsp">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">receipt_long</i> <!-- allakse to-->
            </div>
            <span class="nav-link-text ms-1">Orders</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/map-admin.jsp">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">map</i>
            </div>
            <span class="nav-link-text ms-1">Map</span>
          </a>
        </li>
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Manage Users</h6>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../pages/sign-up-users.jsp">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">person</i>
            </div>
            <span class="nav-link-text ms-1">Sign up users</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <div class="mx-3">
        <a class="btn bg-gradient-primary mt-4 w-100" href="../pages/sign-in.jsp" type="button">Sign out</a>
      </div>
    </div>
  </aside>

  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

    <!--variomoun na ta allaksw apo dw kai katw-->
			
			<div class="container">
    			<% 
    			String name = request.getParameter("Name");
    			String surname = request.getParameter("Surname");
				String email = request.getParameter("Email");
				String username = request.getParameter("Username");
				String password = request.getParameter("Password");
				String confirm = request.getParameter("Confirm");
				String terms = request.getParameter("Terms");

				if (!(name.length() >= 3) || !(surname.length() >= 3) || !(username.length() >= 5) || !(password.length() >= 6) || (!(confirm.equals(password))) || (terms == null)) {
    			%>
					<div class="page-header">
                    	<h1>Registration forms has errors</h1>
                	</div>
    				<div class="alert alert-danger">
						<ol>
							<% if (!(name.length() >= 3)) { %>
								<li>Name must be at least 3 characters long</li>
							<% } 
							if (!(surname.length() >= 3)) { %>
								<li>Surname must be at least 3 characters long</li>
							<% } 
							if (!(username.length() >= 5)) { %>
								<li>Username must be at least 5 characters long</li>
							<% } 
							if (!(password.length() >= 6)) { %>
								<li>Password must be at least 6 characters long</li>
							<% }
							if (!(confirm.equals(password))) { %>
								<li>Password and confirm do not match</li>
							<% }
							if (terms == null) { %>
								<li>You must agree to terms and conditions</li>
							<% } %>
					 	</ol>
					</div>
					<div>
						<a class="btn btn-primary" href="register_ex3_8200129.jsp" role="button"><i class="glyphicon glyphicon-chevron-left"></i> Back to the form</a>			
					</div>		
    			<% 
    			} else {
					try {
						EmployeeDAO dao = new EmployeeDAO();
						dao.register(new Employee(name, surname, email, username, password)); %>
						<div class="page-header">
							<h1>Registration done!</h1>
						</div>
		
						<div>
							<h5><strong>Name: </strong><%=name%> </h5>
							<h5><strong>Surname: </strong><%=surname%> </h5>
							<h5><strong>Email: </strong><%=email%> </h5>
							<h5><strong>Username: </strong><%=username%> </h5>
						</div>
		
						<div>
							<a class="btn btn-primary" href="login_ex3_8200129.jsp" role="button"><i class="glyphicon glyphicon-log-in"></i> Go to login page</a>			
						</div>
					<%
					} catch (Exception e) {
						request.setAttribute("message", e.getMessage());
					%>
					<div class="page-header">
						<h1>Registration has errors :/</h1>
					</div>							
                	<div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
					<div>
						<a class="btn btn-primary" href="register_ex3_8200129.jsp" role="button"><i class="glyphicon glyphicon-chevron-left"></i> Back to the form</a>			
					</div>
            		<%
					}
				}
    			%>  
            </div><!-- /.container -->
			
		</main>
		
	</body>
</html>
