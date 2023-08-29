package com.projeto.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.projeto.util.ConnectionManager;

public class UserService {

    public boolean authenticate(String email, String password) {
        try (Connection conn = ConnectionManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM clientes WHERE email = ? AND senha = ?")) {
            
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            return rs.next(); // Retorna true se o usuário foi autenticado
        } catch (SQLException e) {
            e.printStackTrace();
            // Aqui você pode lançar uma exceção personalizada ou usar um log adequado
            return false; // Em caso de erro, não autenticado
        }
    }

    public boolean register(String username, String email, String password) {
        try (Connection conn = ConnectionManager.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO clientes (username, email, senha) VALUES (?, ?, ?)")) {

            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // Retorna true se o registro for bem-sucedido
        } catch (SQLException e) {
            e.printStackTrace();
            // Aqui você pode lançar uma exceção personalizada ou usar um log adequado
            return false; // Em caso de erro, registro falhou
        }
    }
}
