package tp_JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConnexion {
	static final String QUERY = "SELECT NUM_ET, NOM_ET, PRENOM_ET "
			+ "FROM ETUDIANT " + "WHERE VILLE_ET = 'AIX-EN-PROVENCE'";

	private static Statement createStatement(Connection connection) {
		Statement statement = null;
		try {
			statement = connection.createStatement();
		} catch (SQLException e) {
			System.err.println("Statement failed");
			e.printStackTrace();
			System.exit(1);
		}
		return statement;
	}

	private static ResultSet executeQuery(Statement statement, String query) {
		ResultSet queryResults = null;
		try {
			queryResults = statement.executeQuery(QUERY);
		} catch (SQLException e) {
			System.err.println("Query failed");
			e.printStackTrace();
			System.exit(1);
		}
		return queryResults;
	}

	private static void displayResults(ResultSet results) {
		try {
			while (results.next()) {
				System.out.print(results.getInt("NUM_ET") + " ");
				System.out.print(results.getString("NOM_ET") + " ");
				System.out.println(results.getString("PRENOM_ET"));
			}
		} catch (SQLException e) {
			System.err
					.println("Display error: columnLabel not valid OR database access error OR closed result set");
			e.printStackTrace();
			System.exit(1);
		}
	}

	private static void close(Connection connection, Statement statement,
			ResultSet queryResults) {
		try {
			connection.close();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error during close");
			e.printStackTrace();
		}
	}

	public static void main(String[] args) throws InterruptedException {
		Connection connection;
		try {
			connection = ConnexionUnique.getInstance().getConnection();
			Statement statement = createStatement(connection);
			ResultSet queryResults = executeQuery(statement, QUERY);
			displayResults(queryResults);
			close(connection, statement, queryResults);
		} catch (SQLException e) {
			e.getMessage();
			e.printStackTrace();
		}
	}
}