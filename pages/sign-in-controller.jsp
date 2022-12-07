<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="fyw.*" %>

<% 
String username = request.getParameter("username");
String password = request.getParameter("password");


EmployeeDAO dao = new EmployeeDAO();
try {
    Employee employee = dao.authenticate(username, password);
    session.setAttribute("emplObj2022", employee);
    out.println("mpainei edw naiiii");


    if (employee.getRole().equals("admin")) {
        RequestDispatcher view = request.getRequestDispatcher("/pages/dashboard.jsp");
        view.forward(request, response); //forward response to request
    } else {
        RequestDispatcher view = request.getRequestDispatcher("/pages/orders-delivery.jsp");
        view.forward(request, response); //forward response to request
    }

} catch (Exception e) {
    request.setAttribute("message", e.getMessage());
    %>
    <!--<jsp:forward page="sign-in.jsp"/>-->

<%    
}

%>