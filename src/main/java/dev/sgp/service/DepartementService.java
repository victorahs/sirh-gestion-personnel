package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;

public class DepartementService {
	
	
	List<Departement> listeDepartement = new ArrayList<>();
	
	
	
	
	public DepartementService() {
		
		Departement informatique = new Departement(1, "Informatique");
		Departement administratif = new Departement(2, "Administratif");
		Departement ressourceHumaine = new Departement(3, "Ressource Humaine");
		Departement comptabilite = new Departement(4, "Comptabilité");
		listeDepartement.add(informatique);
		listeDepartement.add(administratif);
		listeDepartement.add(ressourceHumaine);
		listeDepartement.add(comptabilite);
		
	}




	public List<Departement> listerDepartement() {
		return listeDepartement;
	}
	
	
	

}
