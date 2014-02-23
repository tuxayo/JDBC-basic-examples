package tp_JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TestEntite {
	static final String QUERY = "SELECT * "
			+ "FROM ETUDIANT " + "WHERE VILLE_ET = 'AIX-EN-PROVENCE'";

	private static void handleCriticalError(String message, SQLException e) {
		System.err.println(message);
		e.getMessage();
		e.printStackTrace();
		System.exit(1);
	}

	private static Statement createStatement(Connection connection) {
		Statement statement = null;
		try {
			statement = connection.createStatement();
		} catch (SQLException e) {
			handleCriticalError("Statement failed", e);
		}
		return statement;
	}

	private static ResultSet executeQuery(Statement statement, String query) {
		ResultSet queryResults = null;
		try {
			queryResults = statement.executeQuery(QUERY);
		} catch (SQLException e) {
			handleCriticalError("Query failed:" + "\n" + "query", e);
		}
		return queryResults;
	}

	private static void close(Connection connection, Statement statement,
			ResultSet queryResults) {
		try {
			connection.close();
			statement.close();
		} catch (SQLException e) {
			handleCriticalError("Error during close", e);
		}
	}

	private static ArrayList<Etudiant> storeResultsInArrayList(ResultSet results) {
		ArrayList<Etudiant> arrayListEtudiant = new ArrayList<Etudiant>();
		try {
			results.beforeFirst(); // reset cursor
			while (results.next()) {
				Etudiant etudiant = new Etudiant();
				etudiant.setNumEt(results.getInt("NUM_ET"));
				etudiant.setNomEt(results.getString("NOM_ET"));
				etudiant.setPrenomEt(results.getString("PRENOM_ET"));
				etudiant.setCpEt(results.getString("CP_ET"));
				etudiant.setVilleEt(results.getString("VILLE_ET"));
				etudiant.setAnnee(results.getInt("ANNEE"));
				etudiant.setGroupe(results.getInt("GROUPE"));
				arrayListEtudiant.add(etudiant);
			}
		} catch (SQLException e) {
			handleCriticalError("Storage error: columnLabel not valid "
					+ "OR database access error OR closed result set", e);
		}
		return arrayListEtudiant;
	}

//	private static void displayResults(ResultSet results) {
//		try {
//			while (results.next()) {
//				System.out.print(results.getInt("NUM_ET") + " ");
//				System.out.print(results.getString("NOM_ET") + " ");
//				System.out.println(results.getString("PRENOM_ET"));
//			}
//		} catch (SQLException e) {
//			handleCriticalError("Display error: columnLabel not valid "
//					+ "OR database access error OR closed result set", e);
//		}
//	}

	private static void displayEtudiants(ArrayList<Etudiant> arrayListEtudiant) {
		for (Etudiant etudiant : arrayListEtudiant) {
			System.out.println(etudiant.toString());
		}
	}

	public static void main(String[] args) throws InterruptedException {
		Connection connection;
		try {
			connection = ConnexionUnique.getInstance().getConnection();
		Statement statement = createStatement(connection);
		ResultSet queryResults = executeQuery(statement, QUERY);
		ArrayList<Etudiant> arrayListEtudiant = storeResultsInArrayList(queryResults);
		displayEtudiants(arrayListEtudiant);
		close(connection, statement, queryResults);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}