<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 5310
  Date: 08/04/2024
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
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
        .container {
            width: 80%;
            max-width: 1200px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            box-sizing: border-box;
            margin-top: 20px;
            overflow-x: auto;
        }
        .add, .search {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .search input[type="text"] {
            width: 300px;
            padding: 12px;
            margin-right: 10px;
            border: none;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            transition: border-color 0.3s;
        }
        .search input[type="text"]:focus {
            outline: none;
            border-color: #5bc0de;
        }

        .search button {
            background-color: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .search button:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
        }
        .action-buttons button {
            margin: 0 5px;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        .action-buttons button a {
            text-decoration: none;
            color: #fff;
        }
        .action-buttons button.edit {
            background-color: #17a2b8;
        }
        .action-buttons button.edit:hover {
            background-color: #138496;
        }
        .action-buttons button.delete {
            background-color: #dc3545;
        }
        .action-buttons button.delete:hover {
            background-color: #bd2130;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="add">
        <button><a href="http://localhost:8080/staff?action=add">Add New</a></button>
    </div>
    <div class="search">
        <form method="get" action="http://localhost:8080/staff">
            <input type="hidden" name="action" value="searchName">
            <input type="text" name="inputName" placeholder="Enter Name">
            <button type="submit">Search</button>
        </form>
    </div>
    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Salary</th>
            <th>Department</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${staffList}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.email}</td>
                <td>${item.address}</td>
                <td>${item.phone}</td>
                <td>${item.salary}</td>
                <td>${item.department.name}</td>
                <td class="action-buttons">
                    <button class="edit"><a href="http://localhost:8080/staff?action=edit&idEdit=${item.id}">Edit</a></button>
                    <button class="delete" onclick="deleteStaff(${item.id})">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function deleteStaff(id){
        let isConfirm = confirm("Are you sure you want to delete?");
        if (isConfirm){
            window.location.href = "http://localhost:8080/staff?action=delete&idDelete="+id;
        }
    }
</script>
</body>
</html>