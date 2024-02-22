
<%@page import="java.util.List"%>
<%@ page import="com.service.glassfishwebapp.logic.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>JSP Page</title>
</head>
<body>
<div class="container mt-3">
    <h1 class="text-center">User List!</h1>
    <div class="container d-flex justify-content-center flex-wrap">
        <%
            List<User> listUsers = (List) request.getSession().getAttribute("listUsers");
            int cont = 1;
            for (User usu : listUsers) {
        %>      <div class="card m-3" style="width: 18rem;">
                    <div class="card-body">
                        <p class="card-title"><b>User N° <%=cont%></b></p>
                        <ul class="list-group">
                            <li class="list-group-item"><p>Id: <%=usu.getId()%></p></li>
                            <li class="list-group-item"><p>Dni: <%=usu.getDni()%></p></li>
                            <li class="list-group-item"><p>First Name: <%=usu.getfName()%></p></li>
                            <li class="list-group-item"><p>Last Name: <%=usu.getlName()%></p></li>
                            <li class="list-group-item"><p>Phone: <%=usu.getPhone()%></p></li>
                        </ul>
                    </div>
                </div>
        <%cont++;%>
        <%}%>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
