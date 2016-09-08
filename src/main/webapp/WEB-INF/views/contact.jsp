<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 07.09.2016
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" action="/app/person/contact/add" modelAttribute="person">
    <table>
        <tr>
            <td><form:label path="type">Type</form:label></td>
            <td><form:input path="type" /></td>
        </tr>
        <tr>
            <td><form:label path="value">Lastname</form:label></td>
            <td><form:input path="value" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
