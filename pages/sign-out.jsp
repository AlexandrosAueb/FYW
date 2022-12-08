<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
    <jsp:forward page="sign-in.jsp"/>
</html>