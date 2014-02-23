package tp_JDBC;

import java.io.Serializable;

public class Prof implements Serializable {
	private static final long serialVersionUID = -8929820221107306946L;
	private String adrProf;
	private String cpProf;
	private String nomProf;
	private int numProf;
	private String prenomProf;
	private Module specialite;
	private String villeProf;
	public Prof() {

	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((adrProf == null) ? 0 : adrProf.hashCode());
		result = prime * result + ((cpProf == null) ? 0 : cpProf.hashCode());
		result = prime * result + ((nomProf == null) ? 0 : nomProf.hashCode());
		result = prime * result + numProf;
		result = prime * result
				+ ((prenomProf == null) ? 0 : prenomProf.hashCode());
		result = prime * result
				+ ((villeProf == null) ? 0 : villeProf.hashCode());
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
		Prof other = (Prof) obj;
		if (adrProf == null) {
			if (other.adrProf != null)
				return false;
		} else if (!adrProf.equals(other.adrProf))
			return false;
		if (cpProf == null) {
			if (other.cpProf != null)
				return false;
		} else if (!cpProf.equals(other.cpProf))
			return false;
		if (nomProf == null) {
			if (other.nomProf != null)
				return false;
		} else if (!nomProf.equals(other.nomProf))
			return false;
		if (numProf != other.numProf)
			return false;
		if (prenomProf == null) {
			if (other.prenomProf != null)
				return false;
		} else if (!prenomProf.equals(other.prenomProf))
			return false;
		if (villeProf == null) {
			if (other.villeProf != null)
				return false;
		} else if (!villeProf.equals(other.villeProf))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Prof [adrProf=" + adrProf + ", cpProf=" + cpProf + ", nomProf="
				+ nomProf + ", numProf=" + numProf + ", prenomProf="
				+ prenomProf + ", specialite=" + specialite + ", villeProf="
				+ villeProf + "]";
	}

	public String getAdrProf() {
		return adrProf;
	}

	public String getCpProf() {
		return cpProf;
	}

	public String getNomProf() {
		return nomProf;
	}

	public int getNumProf() {
		return numProf;
	}

	public String getPrenomProf() {
		return prenomProf;
	}

	public Module getSpecialite() {
		return specialite;
	}

	public String getVilleProf() {
		return villeProf;
	}

	public void setAdrProf(String adrProf) {
		this.adrProf = adrProf;
	}

	public void setCpProf(String cpProf) {
		this.cpProf = cpProf;
	}

	public void setNomProf(String nomProf) {
		this.nomProf = nomProf;
	}

	public void setNumProf(int numProf) {
		this.numProf = numProf;
	}

	public void setPrenomProf(String prenomProf) {
		this.prenomProf = prenomProf;
	}

	public void setSpecialite(Module specialite) {
		this.specialite = specialite;
	}

	public void setVilleProf(String villeProf) {
		this.villeProf = villeProf;
	}
}
