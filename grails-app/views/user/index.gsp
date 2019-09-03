<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title></title>
	<style type="text/css">
	label{
		float: left;
		width: 65px;
	}
	</style>
</head>

<body>
${flash.message}
<g:form controller="user" action="login" style="padding-left: 200px">
	<div style="width: 220px">
		<label>Username:</label><input type="text" name="user" value="user">
		<label>Password:</label><input type="password" name="pass" value="pass">
		<label>&nbsp;</label><input type="submit" value="Login">

	</div>
</g:form>

</body>
</html>