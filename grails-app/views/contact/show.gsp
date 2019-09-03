<%--
  Created by IntelliJ IDEA.
  User: avinash
  Date: 28/08/19
  Time: 11:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>show</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>


<body>
<div id="contact" class="container" role="main">
    <h1>contact details</h1>
    <table id="cont_table"  class="table-view table-stripped" style="width:99%;">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Mobile number</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tfoot>
        <g:each in="${contacts}" var="contact" status="count">

                <tr>
                    <td>${count+1}</td>
                    <td>${contact?.name}</td>
                    <td>${contact?.phonenumber}</td>
                    <td><g:link action="edit" id="${contact.id}">Edit</g:link><br /></td>
                    <td><g:link action="delete" id="${contact.id}">Delete</g:link></td>
                </tr>
        </g:each>
        </tfoot>
    </table>
    <g:link action="create">Create new contact</g:link><br/>
</div>









</body>
</html>