package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");
	Collaborateur collaborateur = collabService.find(matricule);		
		
		req.setAttribute("collaborateur", collaborateur);
		
		req.getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateur.jsp").forward(req, resp);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String matricule = req.getParameter("matricule");
		String iban = req.getParameter("iban");
		String bic = req.getParameter("bic");
		String intitulePoste = req.getParameter("named");
		String adresse = req.getParameter("adresse");
		
		Collaborateur collaborateur = collabService.find(matricule);
		collaborateur.setBic(bic);
		collaborateur.setIban(iban);
		collaborateur.setIntitulePoste(intitulePoste);
		collaborateur.setAdresse(adresse);
		
		req.setAttribute("listCollab", collabService.listerCollaborateurs());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		
		


	}

}
