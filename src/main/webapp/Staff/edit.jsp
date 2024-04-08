<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 5310
  Date: 08/04/2024
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }
        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            box-sizing: border-box;
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1 {
            margin-top: 0;
        }
        input, select, button {
            width: 100%;
            max-width: 400px;
            height: 40px;
            padding: 8px 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1> Change employee </h1>
<form method="post" action="http://localhost:8080/staff?action=edit">
    <input type="hidden" name="id" value="${idEdit}">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Enter name" value="${staffEdit.name}">

    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Enter email" value="${staffEdit.email}">

    <label for="address">Address</label>
    <input type="text" id="address" name="address" placeholder="Enter address" value="${staffEdit.address}">

    <label for="phone">Phone Number</label>
    <input type="text" id="phone" name="phone" placeholder="Enter phone number" value="${staffEdit.phone}">

    <label for="salary">Salary</label>
    <input type="number" id="salary" name="salary" placeholder="Enter salary" value="${staffEdit.salary}">

    <label for="department">Department</label>
    <select id="department" name="idDepartment">
        <c:forEach var="item" items="${list}">
            <option value="${item.id}" <c:if test="${item.id eq staffEdit.department.id}">selected</c:if>>${item.name}</option>
        </c:forEach>
    </select>

    <button type="submit">Save</button>
</form>
</body>
</html>