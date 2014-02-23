package tp_JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Set;

public class TestAsso2 {
	static final String QUERY_ETUDIANTS = "SELECT * " + "FROM ETUDIANT";
	static final String QUERY_MODULE = "SELECT * " + "FROM MODULE";
	static final String QUERY_NOTATION = "SELECT * " + "FROM NOTATION";

	private static void close(Connection connection, Statement statement,
			ResultSet queryResults) throws SQLException {
		connection.close();
		statement.close();
		queryResults.close();
	}

	private static ArrayList<Etudiant> storeEtudiantsInArrayList(
			ResultSet results) throws SQLException {
		ArrayList<Etudiant> arrayListEtu = new ArrayList<Etudiant>();
		results.beforeFirst(); // reset cursor
		while (results.next()) {
			Etudiant etu = getEtudiantsFromTuple(results);
			arrayListEtu.add(etu);
		}
		return arrayListEtu;
	}

	private static ArrayList<Module> storeModulesInArrayList(ResultSet results)
			throws SQLException {
		ArrayList<Module> arrayListModules = new ArrayList<Module>();
		results.beforeFirst(); // reset cursor
		while (results.next()) {
			Module module = getModuleFromTuple(results);
			arrayListModules.add(module);
		}
		return arrayListModules;
	}

	private static void fillAssociationNotation(ResultSet results,
			ArrayList<Module> arrayListModule,
			ArrayList<Etudiant> arrayListEtudiants) throws SQLException {
		AssociationNotation assoNotation = AssociationNotation.getInstance();
		results.beforeFirst(); // reset cursor
		while (results.next()) {
			Notation notation = getNotationFromTuple(results);

			String code = results.getString("CODE");
			Module module = getModuleByCode(code, arrayListModule);

			int numEt = results.getInt("NUM_ET");
			Etudiant etudiant = getEtudiantsByNumEt(numEt, arrayListEtudiants);

			assoNotation.creerLien(module, etudiant, notation);
		}

	}

	private static Module getModuleByCode(String code,
			ArrayList<Module> arrayListModule) {
		for (Module module : arrayListModule) {
			if (module.getCode().equals(code))
				return module;
		}
		System.err.println("Module not found!!!");
		return null;
	}

	private static Etudiant getEtudiantsByNumEt(int numEt,
			ArrayList<Etudiant> arrayListEtudiant) {
		for (Etudiant etu : arrayListEtudiant) {
			if (etu.getNumEt() == numEt)
				return etu;
		}
		System.err.println("Module not found!!!");
		return null;
	}

	private static Etudiant getEtudiantsFromTuple(ResultSet results)
			throws SQLException {
		Etudiant etu = new Etudiant();

		etu.setNumEt(results.getInt("NUM_ET"));
		etu.setNomEt(results.getString("NOM_ET"));
		etu.setPrenomEt(results.getString("PRENOM_ET"));
		etu.setCpEt(results.getString("CP_ET"));
		etu.setVilleEt(results.getString("VILLE_ET"));
		etu.setAnnee(results.getInt("ANNEE"));
		etu.setGroupe(results.getInt("GROUPE"));
		return etu;
	}

	private static Module getModuleFromTuple(ResultSet results)
			throws SQLException {
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

	private static Notation getNotationFromTuple(ResultSet results)
			throws SQLException {
		Notation notation = new Notation();
		notation.setMoyCC(results.getInt("MOY_CC"));
		notation.setMoyTest(results.getInt("MOY_TEST"));
		return notation;
	}

	private static Module findAcsiModule(ArrayList<Module> arrayListModule) {
		for (Module module : arrayListModule) {
			if (module.getCode().equals("ACSI"))
				return module;
		}
		return null; // if module not found
	}

	private static void afficherEtudiantsAvecNotes(Set<Lien> liensAvecModuleAcsi) {
		for (Lien lien : liensAvecModuleAcsi) {
			System.out.println(lien.getEtudiant().toString());
			System.out.print("Note CC: ");
			System.out.println(lien.getNotation().getMoyCC());
			System.out.print("Note test: ");
			System.out.println(lien.getNotation().getMoyTest());
		}

	}

	public static void main(String[] args) throws InterruptedException {
		try {
			Connection connection = ConnexionUnique.getInstance()
					.getConnection();
			Statement statement = connection.createStatement();

			ResultSet queryResults = statement.executeQuery(QUERY_ETUDIANTS);
			ArrayList<Etudiant> arrayListEtudiants = storeEtudiantsInArrayList(queryResults);

			queryResults = statement.executeQuery(QUERY_MODULE);
			ArrayList<Module> arrayListModule = storeModulesInArrayList(queryResults);

			queryResults = statement.executeQuery(QUERY_NOTATION);
			fillAssociationNotation(queryResults, arrayListModule,
					arrayListEtudiants);

			Module moduleAcsi = findAcsiModule(arrayListModule);
			Set<Lien> liensAvecModuleAcsi = AssociationNotation.getInstance()
					.getLiens(moduleAcsi);

			afficherEtudiantsAvecNotes(liensAvecModuleAcsi);

			close(connection, statement, queryResults);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
			System.exit(1);
		}
	}
}