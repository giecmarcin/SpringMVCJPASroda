<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 07.09.2016
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Lastname</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${people!=null}">
        <c:forEach items="${people}" var="person">
            <tr>
                <td>${person.id}</td>
                <td>${person.firstName}</td>
                <td>${person.lastname}</td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>
<body>

</body>
</html>
