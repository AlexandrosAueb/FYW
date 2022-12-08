<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="header.jsp" %>
  <title>
    Find Your Way
  </title>

</head>

<body>
  <main class="main-content  mt-0">
    <div class="page-header align-items-start min-vh-100"
      style="background-image: url('https://web-food.gr/wp-content/uploads/2021/10/Online_Shoping_29-1024x819-1-768x614.jpg;'); height: 100 vh; ">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-6 col-md-8 col-12 mx-auto">
            <div class="card z-index-0 fadeIn3 fadeInBottom">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                  <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Sign in</h4>
                  <div class="row mt-3">
                  </div>
                </div>
              </div>

              <div class="card-body">
  
            <% if(request.getAttribute("message") != null) { %>		
              <div class="alert alert-danger text-center" role="alert" style="color:#fff"><%=(String)request.getAttribute("message") %></div>
            <% } %>

                <form role="form" class="text-start" method="POST" action="sign-in-controller.jsp">
                  <div class="input-group input-group-outline my-3">
                    <label for="inputusername" class="form-label">Username</label> 
                  <input type="text" name="username"  class="form-control" required>
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label for="inputpassword" class="form-label">Password</label>
                    <input name="password" type="password"  class="form-control" required>
                  </div>
                  <div class="form-check form-switch d-flex align-items-center mb-3">
                    <input class="form-check-input" type="checkbox" id="rememberMe" checked>
                    <label class="form-check-label mb-0 ms-3" for="rememberMe">Remember me</label>
                  </div>
                  <div class="row">
                    <div class="mx-1 text-center">
                      <button class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0" style="height:50px;width:250px" type="submit">Sign in</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer position-absolute bottom-2 py-2 w-100">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-white">
                ©
                <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <i class="font-weight-bold">Find Your Way</i>
                for a better delivery.
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
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