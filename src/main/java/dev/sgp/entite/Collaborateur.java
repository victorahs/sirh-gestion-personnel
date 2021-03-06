package dev.sgp.entite;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;

import org.apache.commons.lang3.RandomStringUtils;

public class Collaborateur {
	
	String matricule;
	
	String nom;
	
	String prenom;
	
	LocalDate dateDeNaissance;
	
	String adresse;
	
	String numeroSecuriteSocial;
	
	String emailPro;
	
	String photo;
	
	LocalDateTime dateHeureCreation;
	
	Boolean actif;
	
	String intitulePoste;
	
	Departement departement;
	
	String banque;
	
	String bic;
	
	String iban;
	
	public Collaborateur(String nom, String prenom, String dateDeNaissance, String adresse, String numeroSecuriteSocial) {
		
		
		this.matricule = RandomStringUtils.randomNumeric(15);
		this.nom = nom;
		this.prenom = prenom;
		this.dateDeNaissance = LocalDate.parse(dateDeNaissance);
		this.adresse = adresse;
		this.numeroSecuriteSocial = numeroSecuriteSocial;
		this.emailPro = nom+"."+prenom+"@societe.com";
		this.photo = "img.svg";
		this.dateHeureCreation = LocalDateTime.now();
		this.actif = true;
		
		
		
	}

	public Collaborateur() {
		// TODO Auto-generated constructor stub
	}

	public String getIntitulePoste() {
		return intitulePoste;
	}

	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	public Departement getDepartement() {
		return departement;
	}

	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	public String getBanque() {
		return banque;
	}

	public void setBanque(String banque) {
		this.banque = banque;
	}

	public String getBic() {
		return bic;
	}

	public void setBic(String bic) {
		this.bic = bic;
	}

	public String getIban() {
		return iban;
	}

	public void setIban(String iban) {
		this.iban = iban;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Collaborateur [matricule=" + matricule + ", nom=" + nom + ", prenom=" + prenom + ", dateDeNaissance="
				+ dateDeNaissance + ", adresse=" + adresse + ", numeroSecuriteSocial=" + numeroSecuriteSocial
				+ ", emailPro=" + emailPro + ", photo=" + photo + ", dateHeureCreation=" + dateHeureCreation
				+ ", actif=" + actif + "]";
	}

	/** Getter
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}

	/**Setter
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
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

	/** Getter
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**Setter
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/** Getter
	 * @return the dateDeNaissance
	 */
	public LocalDate getDateDeNaissance() {
		return dateDeNaissance;
	}

	/**Setter
	 * @param dateDeNaissance the dateDeNaissance to set
	 */
	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}

	/** Getter
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/**Setter
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/** Getter
	 * @return the numeroSecuriteSocial
	 */
	public String getNumeroSecuriteSocial() {
		return numeroSecuriteSocial;
	}

	/**Setter
	 * @param numeroSecuriteSocial the numeroSecuriteSocial to set
	 */
	public void setNumeroSecuriteSocial(String numeroSecuriteSocial) {
		this.numeroSecuriteSocial = numeroSecuriteSocial;
	}

	/** Getter
	 * @return the emailPro
	 */
	public String getEmailPro() {
		return emailPro;
	}

	/**Setter
	 * @param emailPro the emailPro to set
	 */
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}

	/** Getter
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}

	/**Setter
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	/** Getter
	 * @return the dateHeureCreation
	 */
	public LocalDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}

	/**Setter
	 * @param dateHeureCreation the dateHeureCreation to set
	 */
	public void setDateHeureCreation(LocalDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}

	/** Getter
	 * @return the actif
	 */
	public Boolean getActif() {
		return actif;
	}

	/**Setter
	 * @param actif the actif to set
	 */
	public void setActif(Boolean actif) {
		this.actif = actif;
	}


	
	
	

}
