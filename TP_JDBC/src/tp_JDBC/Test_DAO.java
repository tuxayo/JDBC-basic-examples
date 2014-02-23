package tp_JDBC;

import java.sql.SQLException;

public class Test_DAO {
	public static void main(String[] args) throws InterruptedException {
		Etudiant etu = new Etudiant();
		etu.setPrenomEt("John");
		etu.setNomEt("Doe");
		etu.setAnnee(2);
		etu.setCpEt("12345");
		etu.setGroupe(2);
		etu.setVilleEt("DTC");
		try {
			DAOEtudiant.getInstance().insert(etu);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
			System.exit(1);
		}
	}
}