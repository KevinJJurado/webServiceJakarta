package com.service.glassfishwebapp;

import com.service.glassfishwebapp.logic.Controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "SvDelete", value = "/SvDelete")
public class SvDelete extends HttpServlet {

    Controller control = new Controller();
    public void init() {
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id_delete = Integer.parseInt(request.getParameter("id_delete"));
        System.out.println(id_delete);
        control.deleteUser(id_delete);

        response.sendRedirect("index.jsp");
    }
}
