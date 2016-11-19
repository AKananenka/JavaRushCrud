<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
    h1 {
        padding-top: 150px;
        text-align: center;
    }
    h2 {
        text-align: center;
    }
    .my_content_container a {

        border: 2px solid black;
        margin: 0 auto;
        color: mediumblue;
        display: block;
        height: 3.3em;
        padding: 0 1em;
        width: 5em;
        text-decoration: none;
        text-align: center;
        background: lightgrey;
    }

</style>
<head>
    <title>xDiga</title>
</head>
<body>
    <h1 >xDiga's presents for JavaRush</h1>
    <h2> This is a little CRUD-software. For checking usability click field below</h2>
    <br/>


    <div class="my_content_container">

        <a href="<c:url value="/users"/>" target="_blank">
            </br>
            Start Test</a>
    </div>

    <br/>
</body>
</html>
