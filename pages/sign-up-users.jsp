<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<%
if (session.getAttribute("adminObj") == null) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");
%>
  <jsp:forward page="../pages/sign-in.jsp"/>
<%    
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="header.jsp" %>
  <title>
    Find Your Way
  </title>

</head>

<body class="">

  <main class="main-content  mt-0">
    <section>
      <div class="page-header min-vh-100">
        <div class="container">
          <div class="row">
            <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
              <div class="image">
                <img src="https://img.freepik.com/premium-vector/delivery-motorcycle-map_24911-68895.jpg">
              </div>
            </div>
            <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5">
              <div class="card card-plain">
                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                  <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Sign Up</h4>
                  <div class="row mt-3">
                  </div>      
                </div>
                <div class="card-body">
                  <% if(request.getAttribute("error_message") != null) { %>		
                    <div class="alert alert-danger text-center" role="alert" style="color:#fff"><%=(String)request.getAttribute("error_message") %></div>
                  <% } %>
  
                  <% if(request.getAttribute("message") != null) { %>		
                    <div class="alert alert-success text-center" role="alert" style="color:#fff"><%=(String)request.getAttribute("message") %></div>
                  <% } %>
                  <form role="form" method="POST" action="sign-up-controller.jsp">
                    <p class="mb-0">Enter your email and password to register</p>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">First Name</label>
                      <input type="text" name="firstname" class="form-control">
                    </div>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">Last Name</label>
                      <input type="text" name="lastname" class="form-control">
                    </div>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">Email</label>
                      <input type="email" name="email" class="form-control">
                    </div>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">Username</label>
                      <input type="text" name="username" class="form-control">
                    </div>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">Password</label>
                      <input type="password" name="password" class="form-control">
                    </div>
                    <div class="input-group input-group-outline mb-3">
                      <label class="form-label">Confirm Password</label>
                      <input type="password" name="confirm" class="form-control">
                    </div>
                    <div class="form-check form-check-info text-start ps-0">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="terms" unchecked>
                      <label class="form-check-label" for="flexCheckDefault">
                        I agree with the <a href="javascript:;" class="text-danger font-weight-bolder">Terms and Conditions</a>
                      </label>
                    </div>
                    <div class="text-center">
                      <button type="submit" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0">Sign Up</button>
                    </div>
                  </form>
                </div>
                <div class="card-footer text-center pt-0 px-lg-2 px-1">
                  <p class="mb-2 text-sm mx-auto">
                    Already have an account?
                    <a href="../pages/sign-in.jsp" class="text-danger text-gradient font-weight-bold">Sign in</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="page-footer font-small bg-gradient-dark">
        <div class="footer-copyright text-center text-white py-3"> ?? 
          <script>
            document.write(new Date().getFullYear())
          </script>,
          Find Your Way
        </div>
      </footer>
      
    </section>
  </main>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=3.0.4"></script>
</body>

</html>