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

    <script type="text/javascript">
        function doAjaxPostPerson() {
            //get the form values
            var firstName = $('#firstName').val();
            var lastname = $('#lastname').val();

            $.ajax({
                        type: "POST",
                        //url: "http://localhost:8080/app/rest/person/add",
                        url: "/app/rest/person/add",
                        data: JSON.stringify({
                            firstName: firstName,
                            lastname: lastname
                        }),
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        //dataType: 'json',
                        success: function (response) {
                            //we have response
                            $('#info').html(response);
                            $('#firstName').val('');
                            $('#lastname').val('');
                            alert('Person was added');
                        },
                        error: function (data) {
                            alert('Error: ' + data);
                        }
                    }
            );
        }
    </script>
</head>
<body>
<div class="col-md-10 col-xs-offset-1">
    <h1>Add Person using Ajax</h1>
    <table>
        <tr>
            <td>Enter your name:</td>
            <td><input type="text" id="firstName"></td>
        </tr>
        <br/>
        <tr>
            <td>Enter your lastName:</td>
            <td><input type="text" id="lastname"></td>
        </tr>
        <br/>
        <tr>
            <td colspan="2"><input type="button" value="Add Users" onclick="doAjaxPostPerson()"><br/></td>
        </tr>
    </table>
    <br/>
    All People
    <button id="refreshPeople" class="btn btn-default" type="submit">Refresh</button>

    <div class="people">
        <table class="data-person-js table table-striped">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Lastname</th>
                <th>Kontakt</th>
            </tr>
        </table>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script type="text/javascript">

            $("#refreshPeople").bind("click", function () {

                $.get("http://localhost:8080/app/rest/person/all", function (data) {
                    $.each(data, function (i, person) {
                        $(".data-person-js").append(
                                "<tr>" +
                                "<td>" + person.id + "</td>" +
                                "<td>" + person.firstName + "</td>" +
                                "<td>" + person.lastname + "</td>" +
                                "<td>" + 'Dodaj kontakt' + "</td>" +
                                "</tr>");
                    });
                });
            });
        </script>
    </div>
    <br/>
</div>
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>
</body>
</html>