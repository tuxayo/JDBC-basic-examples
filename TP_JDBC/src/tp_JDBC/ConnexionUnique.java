package tp_JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionUnique {
	private static final String CONNECT_URL = "jdbc:mysql://localhost:3306/BDEtud";
	private static ConnexionUnique instance = null;
	private Connection connection;
	static String login = "root"; // default
	static String password = "mysql"; // default
	static final String DB_NAME = "MySQL";

	private ConnexionUnique() throws SQLException {
		System.out.println("Connecting to " + DB_NAME);

		connection = DriverManager.getConnection(CONNECT_URL, login, password);

	}

	public Connection getConnection() {
		return connection;
	}

	public static ConnexionUnique getInstance() throws SQLException {
		if (instance == null) {
			instance = new ConnexionUnique();
		}
		return instance;
		// return instance != null ? instance : new ConnexionUnique(); // same
	}
}
