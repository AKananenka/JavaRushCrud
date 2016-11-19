<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>UserData</title>

    <style type="text/css">
        h1 {
            padding: 1px;
            text-align: center;
        }

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
    </style>

</head>
<body>
<a href="<c:url value="/users"/>"><button>Back to users list</button></a>
<br/>
<br/>
<h1>Search results</h1>

<c:if test="${!empty listUsers}">
    <table class="tg">
        <tr>
            <th width="50">ID</th>
            <th width="200">Name</th>
            <th width="50">Age</th>
            <th width="50">Admin</th>
            <th width="220">Creation date</th>
            <th width="50">Edit</th>
            <th width="50">Delete</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createdDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>