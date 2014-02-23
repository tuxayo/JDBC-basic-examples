package tp_JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TestAsso1 {
	static final String QUERY = "SELECT * "
			+ "FROM PROF JOIN MODULE ON PROF.MAT_SPEC = MODULE.CODE";

	private static void close(Connection connection, Statement statement,
			ResultSet queryResults) throws SQLException {
		connection.close();
		statement.close();
		queryResults.close();
	}

	private static ArrayList<Prof> storeResultsInArrayList(ResultSet results)
			throws SQLException {
		ArrayList<Prof> arrayListProf = new ArrayList<Prof>();
		results.beforeFirst(); // reset cursor
		while (results.next()) {
			Prof prof = extractProf(results);
			arrayListProf.add(prof);
		}
		return arrayListProf;
	}

	private static Prof extractProf(ResultSet results) throws SQLException {
		Prof prof = new Prof();
		prof.setNumProf(results.getInt("NUM_PROF"));
		prof.setNomProf(results.getString("NOM_PROF"));
		prof.setPrenomProf(results.getString("PRENOM_PROF"));
		prof.setAdrProf(results.getString("ADR_PROF"));
		prof.setCpProf(results.getString("CP_PROF"));
		prof.setVilleProf(results.getString("VILLE_PROF"));

		Module module = extractModule(results);

		prof.setSpecialite(module);
		return prof;
	}

	private static Module extractModule(ResultSet results) throws SQLException {
		Module module = new Module();
		module.setCode(results.getString("CODE"));
		module.setLibelle(results.getString("LIBELLE"));
		module.sethCoursPrev(results.getInt("H_COURS_PREV"));
		module.sethCoursRea(results.getInt("H_COURS_REA"));
		module.sethTpPrev(results.getInt("H_TP_PREV"));
		module.sethTpRea(results.getInt("H_TP_REA"));
		module.setDiscipline(results.getString("DISCIPLINE"));
		module.setCoefTest(results.getInt("COEFF_TEST"));
		module.setCoefCc(results.getInt("COEFF_CC"));
		return module;
	}

	private static void displayProfs(ArrayList<Prof> arrayListProf) {
		for (Prof prof : arrayListProf) {
			System.out.println(prof.toString());
		}
	}

	public static void main(String[] args) throws InterruptedException {
		try {
			Connection connection = ConnexionUnique.getInstance()
					.getConnection();
			Statement statement = connection.createStatement();
			ResultSet queryResults = statement.executeQuery(QUERY);
			ArrayList<Prof> arrayListProf = storeResultsInArrayList(queryResults);
			displayProfs(arrayListProf);
			close(connection, statement, queryResults);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
			System.exit(1);
		}
	}
}