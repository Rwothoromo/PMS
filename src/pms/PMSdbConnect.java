package pms;

import java.sql.*;
import javax.swing.JOptionPane;

public class PMSdbConnect {
    public static Connection dbConnector(){
        try {
            Class.forName("com.mysql.jdbc.Driver");     //Load db drivers
            Connection a = DriverManager.getConnection("jdbc:mysql://localhost/pms","root","");
            //establish connection to db, (host location/comp ip address/db path, user, password
            return a;
            }
        catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);
                System.exit(1);
                return null;
            }
    }
}
