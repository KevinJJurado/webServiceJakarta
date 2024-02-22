<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>JSP GlassFish</title>
    </head>
    <body>

    <div class="container m-5">
        <h1>Datos del Usuario!</h1>
        <form action="hello-servlet" method="POST">
            <div class="mb-3">
                <label for="Dni" class="form-label">Dni: </label>
                <input name="dni" type="number" class="form-control" id="Dni" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your dni with anyone else.</div>
            </div>
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input name="fName" type="text" class="form-control" id="firstName">
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input name="lName" type="text" class="form-control" id="lastName">
            </div>
            <div class="mb-3">
                <label for="Phone" class="form-label">Phone</label>
                <input name="phone" type="tel" class="form-control" id="Phone">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <div class="container m-5">
        <h2>See User List</h2>
        <p>To view the user's uploaded data, click the following button</p>
        <form action="hello-servlet" method="GET">
            <button class="btn btn-primary">Show Users</button>
        </form>
    </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>