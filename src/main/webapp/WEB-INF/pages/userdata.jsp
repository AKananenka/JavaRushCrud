<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>UserData</title>

    <style type="text/css">
        .tg {
            margin: 0 auto;
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #000000;
            background-color: #f9f9f9
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #000000;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #000000;
            color: #333;
            background-color: #f0f0f0;
        }

        h1 {

            padding: 1px;
            text-align: center;
        }
    </style>

</head>
<body>
<a href="<c:url value="/users"/>"><button>Back to users list</button></a>
<br/>
<br/>
<h1>User Details</h1>

<table class="tg">
    <tr>
        <th width="50">ID</th>
        <th width="200">Name</th>
        <th width="50">Age</th>
        <th width="50">Admin</th>
        <th width="220">Creation date</th>
    </tr>
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createdDate}</td>
    </tr>
</table>
</body>
</html>