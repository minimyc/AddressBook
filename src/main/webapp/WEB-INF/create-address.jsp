<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Address</title>
</head>
<body>
<%@include file="header.html"%>
<form action="/records/create" method="post">

    <%
        String firstName = (String) request.getAttribute("firstname");
        String lastName = (String) request.getAttribute("lastname");
        String address = (String) request.getAttribute("address");

    %>


    <table>
        <tr>
            <td>
                <label for="firstname">First name: </label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
