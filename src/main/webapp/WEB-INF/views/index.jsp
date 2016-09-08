<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Maven + Spring MVC + @JavaConfig</title>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
</head>


<table class="data-contacts-js table table-striped">
    <tr>
        <th>Name</th>
        <th>Telephone</th>
        <th>Email</th>
        </th>
    </tr>
</table>

<button id="fetchContacts" class="btn btn-default" type="submit">Button</button>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">

    $("#fetchContacts").bind("click", function () {

        $.get("http://localhost:8080/app/rest/person/all", function (data) {

            $.each(data, function (i, person) {

                $(".data-person-js").append(
                        "<tr>" +
                        "<td>" + person.firstName + "</td>" +
                        "<td>" + person.lastname + "</td>" +
                        "</tr>");
            });

        });
    });
</script>
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

</body>
</html>