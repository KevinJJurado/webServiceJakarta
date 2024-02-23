package com.service.glassfishwebapp;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import com.service.glassfishwebapp.logic.Controller;
import com.service.glassfishwebapp.logic.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    Controller control = new Controller();

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<User> listUsers = new ArrayList<>();

        listUsers = control.getUsers();

        HttpSession mysesion = request.getSession();
        mysesion.setAttribute("listUsers", listUsers);

        response.sendRedirect("showUsers.jsp");
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String dni = req.getParameter("dni");
        String fName = req.getParameter("fName");
        String lName = req.getParameter("lName");
        String phone = req.getParameter("phone");

        User usu = new User();
        usu.setDni(dni);
        usu.setfName(fName);
        usu.setlName(lName);
        usu.setPhone(phone);

        control.createUser(usu);

        System.out.println("Dni = " + dni);
        System.out.println("First Name = " + fName);
        System.out.println("Last Name = " + lName);
        System.out.println("phone = " + phone);

        resp.sendRedirect("index.jsp");
    }

}