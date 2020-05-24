<%@ page import="itacademy.AddressBook" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Алексей
  Date: 24.05.2020
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Records from Address Book</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<table border="1">
    <tr>
        <th>No.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th colspan="3">Operations</th>
    </tr>

    <%

        for (String addressBook: (List<String>)request.getAttribute("addresses") ) {
    %>
    <tr>
        <td><%=addressBook.toString()%></td>
        <td><%=addressBook.toString()%></td>
        <td><%=addressBook.toString()%></td>
        <td><%=addressBook.toString()%></td>
        <td>
            <a href="/records/read?id=<%=addressBook.toString()%>">Read</a>
        </td>
        <td>
            <a href="/records/update?id=<%=addressBook.toString()%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?id=<%=addressBook.toString()%>">Delete</a>
        </td>

    </tr>

    <%
        }
    %>

</table>
</body>
</html>
