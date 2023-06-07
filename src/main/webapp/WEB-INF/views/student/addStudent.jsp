<%--
  Created by IntelliJ IDEA.
  User: bpr15
  Date: 01.06.2023
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Student</title>
    <meta charset="utf-8"/>
</head>
<body>
<form:form modelAttribute="student" method="POST">
    <div>First name:</div>
    <div>
        <form:input path="firstName"/>
    </div>
    <div>Last name:</div>
    <div>
        <form:input path="lastName"/>
    </div>
    <div>Gender:</div>
    <div>
        <form:radiobutton path="gender" value="M"/> Male
        <form:radiobutton path="gender" value="F"/> Female
    </div>
    <div>Choose a country:</div>
    <div>
        <form:select path="country" items="${countries}"/>
    </div>
    <div>Notes:</div>
    <div>
        <form:textarea path="notes"/>
    </div>
    <div>
        <form:checkbox path="mailingList"/> Mailing List
    </div>
    <div>Programming skills:</div>
    <div>
        <form:checkboxes items="${skills}" path="programmingSkills"/>
    </div>
    <div>Hobbies:</div>
    <div>
        <form:checkboxes items="${hobbies}" path="hobbies"/>
    </div>
    <div>
        <input type="submit" value="Dodaj studenta!">
    </div>
</form:form>
</body>
</html>
