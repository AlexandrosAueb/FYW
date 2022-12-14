
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
    			String name = request.getParameter("firstname");
    			String surname = request.getParameter("lastname");
				String email = request.getParameter("email");
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String confirm = request.getParameter("confirm");
				String terms = request.getParameter("terms");

        if (!(name.length() >= 3) || !(surname.length() >= 3) || !(username.length() >= 4) || !(password.length() >= 3) || (!(confirm.equals(password))) || (terms == null)) {

          if (!(name.length() >= 3)) {
            request.setAttribute("error_message", "Name must be at least 3 characters long");
          } 
          if (!(surname.length() >= 3)) { 
            request.setAttribute("error_message", "Surname must be at least 3 characters long");
          } 
          if (!(username.length() >= 5)) {
            request.setAttribute("error_message", "Username must be at least 4 characters long");
          } 
          if (!(password.length() >= 6)) {
            request.setAttribute("error_message", "Password must be at least 3 characters long");
          }
          if (!(confirm.equals(password))) {
            request.setAttribute("error_message", "Password and confirm do not match");
          }
          if (terms == null) {
            request.setAttribute("error_message", "You must agree to terms and conditions");
          } %>
          <jsp:forward page="sign-up-users.jsp"/>
          <%
        } else {
          try {
            EmployeeDAO dao = new EmployeeDAO();
            Employee emp = new Employee ((dao.getEmployees().size() +1), name, surname, email, "delivery", username, password);
            dao.register(emp);
            request.setAttribute("message", emp.getUsername() + " registered successfully.");
          } catch (Exception e) {
            request.setAttribute("error_message", e.getMessage());
          } finally {

            %>
            <jsp:forward page="sign-up-users.jsp"/>
            <%

       
          }
        }

        %>  
          </div>
          <!-- /container -->
			
		</main>
		
	</body>
</html>
