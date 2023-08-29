package com.projeto.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projeto.services.UserService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (UserService.authenticate(email, password)) {
            // Usuário autenticado, redirecionar para uma página de sucesso
            response.sendRedirect("success.jsp");
        } else {
            // Autenticação falhou, redirecionar para uma página de erro
            response.sendRedirect("error.jsp");
        }
    }
}