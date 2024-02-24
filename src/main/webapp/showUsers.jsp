
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
        <div class="container m-3">
            <h1 class="text-center">List Users!</h1>
            <div class="container d-flex justify-content-center flex-wrap">
                <%
                    List<User> listUsers = (List) request.getSession().getAttribute("listUsers");
                    int cont = 1;
                    for (User usu : listUsers) {
                %>      <div class="card m-3 shadow rounded" style="width: 18rem">
                            <div class="card-body">
                                <p class="card-title"><b>User N° <%=cont%></b></p>

                                <ul class="list-group">
                                    <li class="list-group-item">Id: <%=usu.getId()%></li>
                                    <li class="list-group-item">Dni: <%=usu.getDni()%></li>
                                    <li class="list-group-item">First Name: <%=usu.getfName()%></li>
                                    <li class="list-group-item">Last Name: <%=usu.getlName()%></li>
                                    <li class="list-group-item">Phone: <%=usu.getPhone()%></li>
                                </ul>

                                <div class="d-flex gap-3">
                                    <form action="SvDelete" method="post">
                                        <input name="id_delete"  type="hidden" value="<%=usu.getId()%>">
                                        <button type="submit" class="btn btn-danger mt-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="21" fill="currentColor"
                                                 class="bi bi-trash" viewBox="0 0 16 16">
                                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                                            </svg>
                                        </button>
                                    </form>
                                    <form>
                                        <input name="id_update" type="hidden" value="<%=usu.getId()%>">
                                        <button type="submit" data-bs-toggle="modal" data-bs-target="#modalUpdate"
                                                class="btn btn-secondary mt-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="21" fill="currentColor"
                                                 class="bi bi-gear" viewBox="0 0 16 16">
                                                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492M5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0"/>
                                                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115z"/>
                                            </svg>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    <%cont++;%>
                    <%}%>

            </div>

            <!-- Modal -->
            <div class="modal fade" id="modalUpdate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <%User us = (User) request.getSession().getAttribute("usuUpdate");%>
                            <div class="container w-75 m-5">
                                <h1>User Data!</h1>
                                <form action="SvUpdate" method="post">
                                    <div class="mb-3">
                                        <label for="Dni" class="form-label">Dni: </label>
                                        <input name="dni" type="number" class="form-control" id="Dni"
                                               aria-describedby="emailHelp" value="<%=us.getDni()%>">
                                        <div id="emailHelp" class="form-text">We'll never share your dni with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="firstName" class="form-label">First Name</label>
                                        <input name="fName" type="text" class="form-control" id="firstName"
                                               value="<%=us.getfName()%>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="lastName" class="form-label">Last Name</label>
                                        <input name="lName" type="text" class="form-control" id="lastName" value="<%=us.getlName()%>">
                                    </div>
                                    <div class="mb-3">
                                        <label for="Phone" class="form-label">Phone</label>
                                        <input name="phone" type="tel" class="form-control" id="Phone"
                                               value="<%=us.getPhone()%>">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
