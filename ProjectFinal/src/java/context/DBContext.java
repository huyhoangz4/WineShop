/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HOANGPC
 */
public class DBContext {
    
    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }
    // 1 web page - HTML, CSS, JS, IMAGE, VIDEO
    private final String serverName = "localhost";
    private final String dbName = "FinalProject";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "123456";
}
