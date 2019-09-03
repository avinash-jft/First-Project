<%--
  Created by IntelliJ IDEA.
  User: avinash
  Date: 28/08/19
  Time: 11:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h2>Create new contact</h2>
<g:form controller="contact" action="save">
    Name:<g:textField name="name"/> <br/>
    Phonenumber:<g:textField name="phonenumber" /> <br />
    <g:actionSubmit value="save"/>
</g:form>

</body>
</html>