<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        </head>
    <body>
        <form:form method="POST" action="/person/add" modelAttribute="person">
                 <table>
                    <tr>
                        <td><form:label path="firstName">Name</form:label></td>
                        <td><form:input path="firstName"/></td>
                    </tr>

                    <tr>
                        <td><form:label path="lastname">Lastname</form:label></td>
                        <td><form:input path="lastname"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"/></td>
                    </tr>
                </table>
            </form:form>
    </body>
</html>