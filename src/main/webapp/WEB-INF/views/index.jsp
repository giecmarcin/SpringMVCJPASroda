<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Maven + Spring MVC + @JavaConfig</title>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <script src="<c:url value="/resources/js/jquery-2.2.4.min.js"/>"></script>
</head>



<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>--%>

</body>
</html>