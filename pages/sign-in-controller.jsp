<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="fyw.*" %>

<% 
String username = request.getParameter("username");
String password = request.getParameter("password");


EmployeeDAO dao = new EmployeeDAO();
try {
    Employee employee = dao.authenticate(username, password);


    if (employee.getRole().equals("admin")) {
        session.setAttribute("adminObj", employee);
        RequestDispatcher view = request.getRequestDispatcher("dashboard.jsp");
        view.forward(request, response); //forward response to request
    } else if (employee.getRole().equals("delivery")) {
        session.setAttribute("deliveryObj", employee);
        RequestDispatcher view = request.getRequestDispatcher("orders-delivery.jsp");
        view.forward(request, response); //forward response to request
    }

} catch (Exception e) {
    request.setAttribute("message", e.getMessage());
    %>
    <jsp:forward page="sign-in.jsp"/>
<%    
}

%>