<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="fyw.*, java.util.*" %>
<%@ page errorPage="error.jsp"%>

<%


OrdersDAO ordao = new OrdersDAO();

if (session.getAttribute("deliveryObj") == null) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");

//if ((request.getParameter("status").equals("delivered"))){
//    ordao.changeStatus(Integer.parseInt(request.getParameter("order")),request.getParameter("status"));
//}
%>
  <jsp:forward page="../pages/sign-in.jsp"/>
<%    
}
Employee user = (Employee) session.getAttribute("deliveryObj");
%>

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
            <a class="navbar-brand m-0" href="../pages/profile-delivery.jsp">
                <img src="../assets/img/fyw-logo.png" class="navbar-brand-img h-100" alt="main_logo">
                <span class="ms-1 font-weight-bold text-white"> Find Your Way </span>
            </a>
        </div>
        <hr class="horizontal light mt-0 mb-2">
        <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-white " href="../pages/map-delivery.jsp">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">map</i>
                        </div>
                        <span class="nav-link-text ms-1">Map</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white active bg-gradient-primary" href="../pages/orders-delivery.jsp">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">receipt_long</i> <!-- allakse to-->
                        </div>
                        <span class="nav-link-text ms-1">Orders</span>
                    </a>
                </li>
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">User's info
                    </h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white " href="../pages/profile-delivery.jsp">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">person</i>
                        </div>
                        <span class="nav-link-text ms-1">Profile</span>
                    </a>
                </li>
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8">Set status
                    </h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white ">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked"
                                checked>
                            <label class="form-check-label" for="flexSwitchCheckChecked">Driver's availability</label>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sidenav-footer position-absolute w-100 bottom-0 ">
            <div class="mx-3">
                <a class="btn bg-gradient-primary mt-4 w-100" href="../pages/sign-out.jsp" type="button">Sign out</a>
            </div>
        </div>
    </aside>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
            data-scroll="true">
            <div class="container-fluid py-1 px-3">
                <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                    <div class="ms-md-auto pe-md-3 d-flex align-items-center"> </div>
                    <ul class="navbar-nav  justify-content-end">
                        <li class="nav-item dropdown pe-2 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-bell cursor-pointer"></i>
                            </a>
                            <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
                                aria-labelledby="dropdownMenuButton">
                                <li>
                                    <a class="dropdown-item border-radius-md" href="javascript:;">
                                        <div class="d-flex py-1">
                                            <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                                <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g transform="translate(-2169.000000, -745.000000)"
                                                            fill="#FFFFFF" fill-rule="nonzero">
                                                            <g transform="translate(1716.000000, 291.000000)">
                                                                <g transform="translate(453.000000, 454.000000)">
                                                                    <path class="color-background"
                                                                        d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                        opacity="0.593633743"></path>
                                                                    <path class="color-background"
                                                                        d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                                                    </path>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    Payment successfully completed
                                                </h6>
                                                <p class="text-xs text-secondary mb-0">
                                                    <i class="fa fa-clock me-1"></i>
                                                    2 days
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->

        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-12">
                    <div class="card my-4">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <div class="row gx-4 mb-2">
                                    <div class="col-auto">
                                    </div>
                                    <div class="col-auto my-auto">
                                        <div class="h-100">
                                            <h6 class="text-white text-capitalize ps-3">
                                                Active orders
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-0 pb-2">
                            <div class="table-responsive p-0">
                                <table class="table align-items-center mb-0">
                                    <thead>
                                        <tr>
                                            <th
                                                class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Order</th>
                                            <th
                                                class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Customer</th>
                                            <th
                                                class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                                Address</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Phone Number</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Remaining time </th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Receipt</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <%
                                        List <Orders> ordersDispached = ordao.findOrdersByDeliveryMan( user.getId()); 
                                        for (Orders orders_dispached: ordersDispached){
                                            String address [] = orders_dispached.getAddress().split(",");
                                            if (orders_dispached.getStatus().equals("dispached")){
                                        %>

                                                <tr>
                                                    <td>
                                                        <div class="d-flex px-4 py-1">
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <h6 class="mb-0 text-sm"> <%=orders_dispached.getId() %> </h6>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex px-2 py-1">
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <p class="text-xs font-weight-bold mb-0"><%=orders_dispached.getCustomerName() %></p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="text-xs font-weight-bold mb-0"><%= address[0] %></p>
                                                        <p class="text-xs text-secondary mb-0"><%= address[1] %></p>
                                                    </td>
                                                    <td class="align-middle text-center text-sm">
                                                        <h6 class="mb-0 text-sm">6845316845</h6>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <p class="text-xs font-weight-bold mb-0"> <span
                                                                class="text-warning text-sm font-weight-bolder">6'</span></p>
                                                        <p class="text-xs text-secondary mb-0">Estimated Time: <%=orders_dispached.getEstimatedTime() %> </p>
                                                    </td>
                                                    <td class="align-middle text-center">
                                                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4"><i
                                                                class="material-icons text-lg position-relative me-1">picture_as_pdf</i>
                                                            PDF</button>
                                                    </td>
                                                    <td class="align-middle text-center text-sm">
                                                        <a class="badge badge-sm bg-gradient-success" href="http://ism.dmst.aueb.gr/ismgroup44/FYW/pages/orders-delivery.jsp?order=<%=orders_dispached.getId()%>&status=dispached" >Delivered</a>
                                                    </td>
                                                </tr>

                                        <%
                                            }
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid py-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="card my-4">
                                <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">

                                    <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                        <div class="col-lg-6 col-7">
                                            <h6 class="text-white text-capitalize ps-3">Delivered Orders</h6>
                                        </div>
                                    </div>

                                </div>
                                <div class="card-body px-0 pb-2">
                                    <div class="table-responsive p-0">
                                        <table class="table align-items-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th
                                                        class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Order</th>
                                                    <th
                                                        class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Customer</th>
                                                    <th
                                                        class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                                        Address</th>
                                                    <th
                                                        class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Phone
                                                        Number</th>
                                                    <th
                                                        class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Timer
                                                    </th>
                                                    <th
                                                        class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Receipt</th>
                                                        <th
                                                        class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                        Edit</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                List <Orders> ordersDelivered = ordao.findOrdersByDeliveryMan( user.getId()); 
                                                for (Orders orders_delivered: ordersDelivered){
                                                    String address2 [] = orders_delivered.getAddress().split(",");
                                                    if (orders_delivered.getStatus().equals("delivered")){
                                                %>
        
                                                        <tr>
                                                            <td>
                                                                <div class="d-flex px-4 py-1">
                                                                    <div class="d-flex flex-column justify-content-center">
                                                                        <h6 class="mb-0 text-sm"> <%=orders_delivered.getId() %> </h6>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="d-flex px-2 py-1">
                                                                    <div class="d-flex flex-column justify-content-center">
                                                                        <p class="text-xs font-weight-bold mb-0"><%=orders_delivered.getCustomerName() %></p>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p class="text-xs font-weight-bold mb-0"><%= address2[0] %></p>
                                                                <p class="text-xs text-secondary mb-0"><%= address2[1] %></p>
                                                            </td>
                                                            <td class="align-middle text-center text-sm">
                                                                <h6 class="mb-0 text-sm">6845316845</h6>
                                                            </td>
                                                            <td class="align-middle text-center">
                                                                <p class="text-xs font-weight-bold mb-0"> <span
                                                                        class="text-warning text-sm font-weight-bolder">6'</span></p>
                                                                <p class="text-xs text-secondary mb-0">Estimated Time: <%=orders_delivered.getEstimatedTime() %> </p>
                                                            </td>
                                                            <td class="align-middle text-center">
                                                                <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4"><i
                                                                        class="material-icons text-lg position-relative me-1">picture_as_pdf</i>
                                                                    PDF</button>
                                                            </td>
                                                            <td class="align-middle text-center text-sm">
                                                                <a class="badge badge-sm bg-gradient-danger" href="http://ism.dmst.aueb.gr/ismgroup44/FYW/pages/orders-delivery.jsp?order=<%=orders_delivered.getId()%>&status=delivered" >Call Back</a>
                                                            </td>
                                                        </tr>
        
                                                <%
                                                    }
                                                }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <footer class="footer py-4  ">
                    <div class="container-fluid">
                        <div class="row align-items-center justify-content-lg-between">
                            <div class="col-lg-6 mb-lg-0 mb-4">
                                <div class="copyright text-center text-sm text-muted text-lg-start">
                                    ??
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
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="material-icons py-2">settings</i>
        </a>
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3">
                <!-- End Toggle Button -->
            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">
                <!-- Sidenav Type -->
                <div class="mt-3">
                </div>
                <div class="d-flex">
                </div>
                <!-- Navbar Fixed -->
                <div class="mt-3 d-flex">
                </div>
                <hr class="horizontal dark my-3">
                <div class="mt-2 d-flex">
                </div>
                <div class="w-100 text-center">
                </div>
            </div>
        </div>
    </div>
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