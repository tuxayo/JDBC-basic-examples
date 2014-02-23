package tp_JDBC;

import java.io.Serializable;

public class Module implements Serializable {
	private static final long serialVersionUID = -8061105574356853982L;
	private String code;
	private int coefCc;
	private int coefTest;
	private String discipline;
	private int hCoursPrev;
	private int hCoursRea;
	private int hTpPrev;
	private int hTpRea;
	private String libelle;
	private Module ModulePere;
	private Prof responsable;

	public Module() {
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Module other = (Module) obj;
		if (code == null) {
			if (other.code != null)
				return false;
		} else if (!code.equals(other.code))
			return false;
		if (coefCc != other.coefCc)
			return false;
		if (coefTest != other.coefTest)
			return false;
		if (discipline == null) {
			if (other.discipline != null)
				return false;
		} else if (!discipline.equals(other.discipline))
			return false;
		if (hCoursPrev != other.hCoursPrev)
			return false;
		if (hCoursRea != other.hCoursRea)
			return false;
		if (hTpPrev != other.hTpPrev)
			return false;
		if (hTpRea != other.hTpRea)
			return false;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((code == null) ? 0 : code.hashCode());
		result = prime * result + coefCc;
		result = prime * result + coefTest;
		result = prime * result
				+ ((discipline == null) ? 0 : discipline.hashCode());
		result = prime * result + hCoursPrev;
		result = prime * result + hCoursRea;
		result = prime * result + hTpPrev;
		result = prime * result + hTpRea;
		result = prime * result + ((libelle == null) ? 0 : libelle.hashCode());
		return result;
	}

	@Override
	public String toString() {
		return "Module [code=" + code + ", libelle=" + libelle
				+ ", hCoursPrev=" + hCoursPrev + ", hCoursRea=" + hCoursRea
				+ ", hTpPrev=" + hTpPrev + ", hTpRea=" + hTpRea
				+ ", discipline=" + discipline + ", coefTest=" + coefTest
				+ ", coefCc=" + coefCc + "]";
	}

	public String getCode() {
		return code;
	}

	public int getCoefCc() {
		return coefCc;
	}

	public int getCoefTest() {
		return coefTest;
	}

	public String getDiscipline() {
		return discipline;
	}

	public int gethCoursPrev() {
		return hCoursPrev;
	}

	public int gethCoursRea() {
		return hCoursRea;
	}

	public int gethTpPrev() {
		return hTpPrev;
	}

	public int gethTpRea() {
		return hTpRea;
	}

	public String getLibelle() {
		return libelle;
	}

	public Module getModulePere() {
		return ModulePere;
	}

	public Prof getResponsable() {
		return responsable;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setCoefCc(int coefCc) {
		this.coefCc = coefCc;
	}

	public void setCoefTest(int coefTest) {
		this.coefTest = coefTest;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public void sethCoursPrev(int hCoursPrev) {
		this.hCoursPrev = hCoursPrev;
	}

	public void sethCoursRea(int hCoursRea) {
		this.hCoursRea = hCoursRea;
	}

	public void sethTpPrev(int hTpPrev) {
		this.hTpPrev = hTpPrev;
	}

	public void sethTpRea(int hTpRea) {
		this.hTpRea = hTpRea;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public void setModulePere(Module modulePere) {
		ModulePere = modulePere;
	}

	public void setResponsable(Prof responsable) {
		this.responsable = responsable;
	}
}
