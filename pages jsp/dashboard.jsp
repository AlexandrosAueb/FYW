<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
      data-scroll="true">
      <div class="container-fluid py-1 px-3">
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center"> </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown"
                aria-expanded="false">
                <i class="fa fa-bell cursor-pointer"></i>
              </a>
              <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                <li>
                  <a class="dropdown-item border-radius-md" href="javascript:;">
                    <div class="d-flex py-1">
                      <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                        <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                          xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                          <title>credit-card</title>
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
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
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div
                class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">payments</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Today's Money</p>
                <h4 class="mb-0">€11k</h4>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+15% </span>than last week</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div
                class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">receipt_long</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Total Orders</p>
                <h4 class="mb-0">278</h4>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+3% </span>than last month</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div
                class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">person</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">New Customers</p>
                <h4 class="mb-0">61</h4>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">-2%</span> than yesterday</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div
                class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">sentiment_dissatisfied</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Complaints</p>
                <h4 class="mb-0">3</h4>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">+50% </span>than yesterday</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-6 col-md-6 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 ">Complaints</h6>
              <p class="text-sm "><span class="text-danger text-sm font-weight-bolder">+50% </span>than yesterday</p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> updated 10 mins ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 mt-4 mb-4">
          <div class="card z-index-2  ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 "> Total Orders </h6>
              <p class="text-sm "> Year to date (YTD) </p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> updated 4 min ago </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-4">
        <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
          <div class="card">
            <div class="card-header pb-0">
              <div class="row">
                <div class="col-lg-6 col-7">
                  <h6>Complaints</h6>
                </div>
                <div class="col-lg-6 col-5 my-auto text-end">
                  <div class="dropdown float-lg-end pe-4">
                    <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-ellipsis-v text-secondary"></i>
                    </a>
                    <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Name</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Type of
                        Complain</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                        Settlement</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Order
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">James Drile</h6>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="text-xs font-weight-bold"> The order was delayed 6' </span>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> We put a €5 credit on his account</span>
                      </td>
                      <td class="align-middle">
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4"><i
                            class="material-icons text-lg position-relative me-1">picture_as_pdf</i> PDF</button>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">Tom Newton</h6>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="text-xs font-weight-bold"> The order was delivered cold </span>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> We replaced the order</span>
                      </td>
                      <td class="align-middle">
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4"><i
                            class="material-icons text-lg position-relative me-1">picture_as_pdf</i> PDF</button>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">Nick Stone</h6>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="text-xs font-weight-bold"> The order was wrong </span>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> We replaced the order</span>
                      </td>
                      <td class="align-middle">
                        <button class="btn btn-link text-dark text-sm mb-0 px-0 ms-4"><i
                            class="material-icons text-lg position-relative me-1">picture_as_pdf</i> PDF</button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="card h-100">
            <div class="card-header pb-0">
              <h6>Order Source</h6>
            </div>
            <div class="card-body p-3">
              <div class="table-responsive p-0">
                <table class="table align-items-center justify-content-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Platform</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Percentage
                      </th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <div class="d-flex px-2">
                          <div>
                            <img src="https://icons.iconarchive.com/icons/icons8/windows-8/128/Mobile-Phone-icon.png"
                              class="avatar avatar-sm rounded-circle me-2" alt="telephone">
                          </div>
                          <div class="my-auto">
                            <h6 class="mb-0 text-sm">Telephone</h6>
                          </div>
                      <td class="align-middle text-center">
                        <div class="d-flex align-items-center justify-content-center">
                          <span class="me-2 text-xs font-weight-bold">45%</span>
                          <div>
                            <div class="progress">
                              <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="55"
                                aria-valuemin="0" aria-valuemax="100" style="width: 45%;"></div>
                            </div>
                          </div>
                        </div>
                      </td>
              </div>
              </td>
              </tr>
              <tr>
                <td>
                  <div class="d-flex px-2">
                    <div>
                      <img src="https://cdn-icons-png.flaticon.com/128/3059/3059484.png"
                        class="avatar avatar-sm rounded-circle me-2" alt="web">
                    </div>
                    <div class="my-auto">
                      <h6 class="mb-0 text-sm">Web site</h6>
                    </div>
                <td class="align-middle text-center">
                  <div class="d-flex align-items-center justify-content-center">
                    <span class="me-2 text-xs font-weight-bold">22%</span>
                    <div>
                      <div class="progress">
                        <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="22"
                          aria-valuemin="0" aria-valuemax="100" style="width: 22%;"></div>
                      </div>
                    </div>
                  </div>
                </td>
            </div>
            </td>
            </tr>
            <tr>
              <td>
                <div class="d-flex px-2">
                  <div>
                    <img
                      src="data:image/jpeg;base64,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"
                      class="avatar avatar-sm rounded-circle me-2" alt="telephone">
                  </div>
                  <div class="my-auto">
                    <h6 class="mb-0 text-sm">Efood</h6>
                  </div>
              <td class="align-middle text-center">
                <div class="d-flex align-items-center justify-content-center">
                  <span class="me-2 text-xs font-weight-bold">17%</span>
                  <div>
                    <div class="progress">
                      <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                        aria-valuemax="100" style="width: 17%;"></div>
                    </div>
                  </div>
                </div>
              </td>
          </div>
          </td>
          </tr>
          <tr>
            <td>
              <div class="d-flex px-2">
                <div>
                  <img
                    src="data:image/png;base64,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"
                    class="avatar avatar-sm rounded-circle me-2" alt="telephone">
                </div>
                <div class="my-auto">
                  <h6 class="mb-0 text-sm">Wolt</h6>
                </div>
            <td class="align-middle text-center">
              <div class="d-flex align-items-center justify-content-center">
                <span class="me-2 text-xs font-weight-bold">16%</span>
                <div>
                  <div class="progress">
                    <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                      aria-valuemax="100" style="width: 16%;"></div>
                  </div>
                </div>
              </div>
            </td>
        </div>
        </td>
        </tr>
        </tbody>
        </table>
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

  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="material-icons py-2">settings</i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Material UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="material-icons">clear</i>
          </button>
        </div>

        <footer class="footer py-4  ">
          <div class="container-fluid">
            <div class="row align-items-center justify-content-lg-between">
              <div class="col-lg-6 mb-lg-0 mb-4">
                <div class="copyright text-center text-sm text-muted text-lg-start">
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
      <script src="../assets/js/plugins/chartjs.min.js"></script>
      <script>
        var ctx = document.getElementById("chart-bars").getContext("2d");

        new Chart(ctx, {
          type: "bar",
          data: {
            labels: ["M", "T", "W", "T", "F", "S", "S"],
            datasets: [{
              label: "Sales",
              tension: 0.4,
              borderWidth: 0,
              borderRadius: 4,
              borderSkipped: false,
              backgroundColor: "rgba(255, 255, 255, .8)",
              data: [50, 20, 10, 22, 50, 10, 40],
              maxBarThickness: 6
            },],
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
              legend: {
                display: false,
              }
            },
            interaction: {
              intersect: false,
              mode: 'index',
            },
            scales: {
              y: {
                grid: {
                  drawBorder: false,
                  display: true,
                  drawOnChartArea: true,
                  drawTicks: false,
                  borderDash: [5, 5],
                  color: 'rgba(255, 255, 255, .2)'
                },
                ticks: {
                  suggestedMin: 0,
                  suggestedMax: 500,
                  beginAtZero: true,
                  padding: 10,
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                  color: "#fff"
                },
              },
              x: {
                grid: {
                  drawBorder: false,
                  display: true,
                  drawOnChartArea: true,
                  drawTicks: false,
                  borderDash: [5, 5],
                  color: 'rgba(255, 255, 255, .2)'
                },
                ticks: {
                  display: true,
                  color: '#f8f9fa',
                  padding: 10,
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
            },
          },
        });


        var ctx2 = document.getElementById("chart-line").getContext("2d");

        new Chart(ctx2, {
          type: "line",
          data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
              label: "Mobile apps",
              tension: 0,
              borderWidth: 0,
              pointRadius: 5,
              pointBackgroundColor: "rgba(255, 255, 255, .8)",
              pointBorderColor: "transparent",
              borderColor: "rgba(255, 255, 255, .8)",
              borderColor: "rgba(255, 255, 255, .8)",
              borderWidth: 4,
              backgroundColor: "transparent",
              fill: true,
              data: [50, 40, 300, 320, 500, 350, 200, 230, 500],
              maxBarThickness: 6

            }],
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
              legend: {
                display: false,
              }
            },
            interaction: {
              intersect: false,
              mode: 'index',
            },
            scales: {
              y: {
                grid: {
                  drawBorder: false,
                  display: true,
                  drawOnChartArea: true,
                  drawTicks: false,
                  borderDash: [5, 5],
                  color: 'rgba(255, 255, 255, .2)'
                },
                ticks: {
                  display: true,
                  color: '#f8f9fa',
                  padding: 10,
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
              x: {
                grid: {
                  drawBorder: false,
                  display: false,
                  drawOnChartArea: false,
                  drawTicks: false,
                  borderDash: [5, 5]
                },
                ticks: {
                  display: true,
                  color: '#f8f9fa',
                  padding: 10,
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
            },
          },
        });

        var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

        new Chart(ctx3, {
          type: "line",
          data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
              label: "Mobile apps",
              tension: 0,
              borderWidth: 0,
              pointRadius: 5,
              pointBackgroundColor: "rgba(255, 255, 255, .8)",
              pointBorderColor: "transparent",
              borderColor: "rgba(255, 255, 255, .8)",
              borderWidth: 4,
              backgroundColor: "transparent",
              fill: true,
              data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
              maxBarThickness: 6

            }],
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
              legend: {
                display: false,
              }
            },
            interaction: {
              intersect: false,
              mode: 'index',
            },
            scales: {
              y: {
                grid: {
                  drawBorder: false,
                  display: true,
                  drawOnChartArea: true,
                  drawTicks: false,
                  borderDash: [5, 5],
                  color: 'rgba(255, 255, 255, .2)'
                },
                ticks: {
                  display: true,
                  padding: 10,
                  color: '#f8f9fa',
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
              x: {
                grid: {
                  drawBorder: false,
                  display: false,
                  drawOnChartArea: false,
                  drawTicks: false,
                  borderDash: [5, 5]
                },
                ticks: {
                  display: true,
                  color: '#f8f9fa',
                  padding: 10,
                  font: {
                    size: 14,
                    weight: 300,
                    family: "Roboto",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
            },
          },
        });
      </script>
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