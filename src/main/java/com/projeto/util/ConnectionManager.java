package com.projeto.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
    private static final String jdbcUrl = "jdbc:postgresql://localhost:5432/workshop";
    private static final String user = "postgres";
    private static final String password = "123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcUrl, user, password);
    }
}
