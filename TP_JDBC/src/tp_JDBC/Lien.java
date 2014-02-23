package tp_JDBC;

public class Lien {
	private Module module;
	private Etudiant etudiant;
	private Notation notation;
	
	public Lien (Module module, Etudiant etudiant) {
		this.module = module;
		this.etudiant = etudiant;
	}

	public Module getModule() {
		return module;
	}

	public Etudiant getEtudiant() {
		return etudiant;
	}

	@Override
	public String toString() {
		return "Lien [module=" + module + ", etudiant=" + etudiant
				+ ", notation=" + notation + "]";
	}

	public Notation getNotation() {
		return notation;
	}

	public void setNotation(Notation notation) {
		this.notation = notation;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((etudiant == null) ? 0 : etudiant.hashCode());
		result = prime * result + ((module == null) ? 0 : module.hashCode());
		result = prime * result
				+ ((notation == null) ? 0 : notation.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lien other = (Lien) obj;
		if (etudiant == null) {
			if (other.etudiant != null)
				return false;
		} else if (!etudiant.equals(other.etudiant))
			return false;
		if (module == null) {
			if (other.module != null)
				return false;
		} else if (!module.equals(other.module))
			return false;
		return true;
	}
}
