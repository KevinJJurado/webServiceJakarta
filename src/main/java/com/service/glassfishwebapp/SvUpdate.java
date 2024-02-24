package com.service.glassfishwebapp;

import com.service.glassfishwebapp.logic.Controller;
import com.service.glassfishwebapp.logic.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "SvUpdate", value = "/SvUpdate")
public class SvUpdate extends HttpServlet {

    Controller control = new Controller();

    public void init() {}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_update = Integer.parseInt(request.getParameter("id_update"));

        User user = control.getUser(id_update);

        HttpSession mysession = request.getSession();
        mysession.setAttribute("usuUpdate", user);



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
