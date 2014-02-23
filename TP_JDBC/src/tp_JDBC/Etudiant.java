package tp_JDBC;

import java.io.Serializable;

public class Etudiant implements Serializable {
	private static final long serialVersionUID = 2831590140174841878L;
	private int numEt;
	private String nomEt;
	private String prenomEt;
	private String cpEt;
	private String villeEt;
	private int annee;
	private int groupe;

	public Etudiant() {
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + numEt;
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
		Etudiant other = (Etudiant) obj;
		if (numEt != other.numEt)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Etudiant [numEt=" + numEt + ", nomEt=" + nomEt + ", prenomEt="
				+ prenomEt + ", cpEt=" + cpEt + ", villeEt=" + villeEt
				+ ", annee=" + annee + ", groupe=" + groupe + "]";
	}

	public int getAnnee() {
		return annee;
	}

	public String getCpEt() {
		return cpEt;
	}

	public int getGroupe() {
		return groupe;
	}

	public String getNomEt() {
		return nomEt;
	}

	public int getNumEt() {
		return numEt;
	}

	public String getPrenomEt() {
		return prenomEt;
	}

	public String getVilleEt() {
		return villeEt;
	}

	public void setAnnee(int annee) {
		this.annee = annee;
	}

	public void setCpEt(String cpEt) {
		this.cpEt = cpEt;
	}

	public void setGroupe(int groupe) {
		this.groupe = groupe;
	}

	public void setNomEt(String nomEt) {
		this.nomEt = nomEt;
	}

	public void setNumEt(int numEt) {
		this.numEt = numEt;
	}

	public void setPrenomEt(String prenomEt) {
		this.prenomEt = prenomEt;
	}

	public void setVilleEt(String villeEt) {
		this.villeEt = villeEt;
	}
}
