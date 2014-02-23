package tp_JDBC;

import java.util.HashSet;
import java.util.Set;

public class AssociationNotation {
	private Set<Lien> liens;
	
	@Override
		public String toString() {
			return "AssociationNotation [liens=" + liens + "]";
		}

	private static AssociationNotation instance;

	public AssociationNotation() {
		liens = new HashSet<Lien>();
	}

	public static AssociationNotation getInstance() {
		if (instance == null) {
			instance = new AssociationNotation();
		}
		return instance;
	}

	public void creerLien(Module module, Etudiant etudiant, Notation notation) {
		Lien lien = new Lien(module, etudiant);
		lien.setNotation(notation);
		liens.add(lien);
	}

	public void suprimerLien(Module module, Etudiant etudiant) {
		suprimerLien(getLien(module, etudiant));
	}

	public void suprimerLien(Lien lien) {
		liens.remove(lien);
	}

	public Lien getLien(Module module, Etudiant etudiant) {
		for (Lien lien : liens) {
			if (isLinkFound(module, etudiant, lien))
				return lien;
		}
		return null;
	}

	private boolean isLinkFound(Module module, Etudiant etudiant, Lien lien) {
		return lien.getModule().equals(module)
				&& lien.getEtudiant().equals(etudiant);
	}

	public Set<Lien> getLiens(Etudiant etudiant) {
		Set<Lien> matchingLinks = new HashSet<Lien>();
		for (Lien lien : liens) {
			if (lien.getEtudiant().equals(etudiant))
				matchingLinks.add(lien);
		}
		return matchingLinks;
	}

	public Set<Lien> getLiens(Module module) {
		Set<Lien> matchingLinks = new HashSet<Lien>();
		for (Lien lien : liens) {
			if (lien.getModule().equals(module))
				matchingLinks.add(lien);
		}
		return matchingLinks;
	}

	public Set<Module> getModules(Etudiant etudiant) {
		Set<Module> matchingModules = new HashSet<Module>();
		for (Lien lien : liens) {
			if (lien.getEtudiant().equals(etudiant))
				matchingModules.add(lien.getModule());
		}
		return matchingModules;
	}

	public Set<Etudiant> getEtudiants(Module module) {
		Set<Etudiant> matchingEtudiants = new HashSet<Etudiant>();
		for (Lien lien : liens) {
			if (lien.getModule().equals(module))
				matchingEtudiants.add(lien.getEtudiant());
		}
		return matchingEtudiants;
	}

}
