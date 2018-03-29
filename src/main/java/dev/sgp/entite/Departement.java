package dev.sgp.entite;

public class Departement {

	
	int id;
	
	String nom;
	
	public Departement() {
		// TODO Auto-generated constructor stub
	}

	/** Getter
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**Setter
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/** Getter
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**Setter
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	public Departement(int id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}


	
	
	
}
