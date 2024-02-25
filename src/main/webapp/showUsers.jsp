
<%@page import="java.util.List"%>
<%@ page import="com.service.glassfishwebapp.logic.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container m-3">
            <h1 class="text-center">List Users!</h1>
            <a href="index.jsp"><i class='bx bx-horizontal-left fs-3 cursor-pointer'></i></a>
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

                                <div class="d-flex gap-3 mt-3">
                                    <form action="SvDelete" method="post">
                                        <input name="id_delete"  type="hidden" value="<%=usu.getId()%>">
                                        <button type="submit" class="btn btn-danger">
                                            <i class='bx bx-trash'></i>
                                        </button>
                                    </form>
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal<%=cont%>">
                                        <i class='bx bx-cog'></i>
                                    </button>
                                </div>

                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal<%=cont%>" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">User N° <%=cont%></h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="SvUpdate" method="post">
                                            <div class="mb-3">
                                                <label for="id_update" class="form-label">Id: </label>
                                                <input name="id_update" type="number" class="form-control" id="id_update"
                                                       aria-describedby="emailHelp" value="<%=usu.getId()%>" readonly>
                                            </div>
                                            <div class="mb-3">
                                                <label for="Dni" class="form-label">Dni: </label>
                                                <input name="dni" type="number" class="form-control" id="Dni"
                                                       aria-describedby="emailHelp" value="<%=usu.getDni()%>">
                                                <div id="emailHelp" class="form-text">We'll never share your dni with anyone else.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="firstName" class="form-label">First Name</label>
                                                <input name="fName" type="text" class="form-control" id="firstName"
                                                       value="<%=usu.getfName()%>">
                                            </div>
                                            <div class="mb-3">
                                                <label for="lastName" class="form-label">Last Name</label>
                                                <input name="lName" type="text" class="form-control" id="lastName"
                                                       value="<%=usu.getlName()%>">
                                            </div>
                                            <div class="mb-3">
                                                <label for="Phone" class="form-label">Phone</label>
                                                <input name="phone" type="tel" class="form-control" id="Phone"
                                                       value="<%=usu.getPhone()%>">
                                            </div>

                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                    <%cont++;%>
                    <%}%>

            </div>




        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
