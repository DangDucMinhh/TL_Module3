<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        select {
            height: 40px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Add Employee</h2>
    <form method="post" action="http://localhost:8080/staff?action=add">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter name" required>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter email" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" placeholder="Enter address" required>

        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" placeholder="Enter phone number" required>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" placeholder="Enter salary" required>

        <label for="department">Department:</label>
        <select id="department" name="idDepartment">
            <c:forEach var="item" items="${list}">
                <option value="${item.id}">${item.name}</option>
            </c:forEach>
        </select>

        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>