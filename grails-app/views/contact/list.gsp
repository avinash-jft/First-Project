<%--
  Created by IntelliJ IDEA.
  User: avinash
  Date: 28/08/19
  Time: 11:34 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h1>List contacts</h1>
<g:each in="${contacts}" var="contact">
    Name: ${contact.name}<br />
    Phone Number: ${contact.phonenumber}<br />
    <g:link action="create">Create new contact</g:link><br/>
    <g:link action="edit" id="${contact.id}">Edit</g:link><br />
    <g:link action="delete" id="${contact.id}">Delete</g:link><br /><br />
</g:each>


</body>
</html>