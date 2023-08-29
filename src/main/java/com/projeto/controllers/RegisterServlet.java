package com.projeto.controllers;

import java.io.IOException;
import java.sql.SQLException; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.projeto.services.UserService;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            if (UserService.register(username, email, password)) {
                // Registro bem-sucedido, redirecionar para uma página de sucesso
                response.sendRedirect("success.jsp");
            } 
        } catch (SQLException e) {
            // Lidar com a exceção, exibir um erro ou redirecionar para uma página de erro
            e.printStackTrace(); // Você pode querer substituir isso por um log mais adequado
            response.sendRedirect("error.jsp");
        }
    }
}
