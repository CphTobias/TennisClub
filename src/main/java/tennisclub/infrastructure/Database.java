package tennisclub.infrastructure;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    private final String URL = "jdbc:mysql://localhost:3306/tennisclub?serverTimezone=CET";
    private final String USER = "tennisclub";

    public Database() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e){
            throw new ClassCastException(e.getMessage());
        }
    }

    public Connection connect() throws SQLException {
        return DriverManager.getConnection(URL, USER, null);
    }

}
