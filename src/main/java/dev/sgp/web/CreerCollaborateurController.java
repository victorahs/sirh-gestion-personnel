package dev.sgp.web;
import static org.apache.commons.lang3.RandomStringUtils.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.RepaintManager;

import org.apache.commons.lang3.RandomStringUtils;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet{
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp").forward(req, resp);
	}
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		
		
		String prenom = req.getParameter("name");
		String nom = req.getParameter("lastname");
		String numSecu = req.getParameter("secu");
		String dateDeNaissance = req.getParameter("birthday");
		String adresse = req.getParameter("adresse");
		
		
		String reponseAffichage = "les parametre suivant sont incorrect : ";
		if ("".equals(numSecu)||  "".equals(nom) || "".equals(prenom) || dateDeNaissance == null || "".equals(adresse)  || "".equals(dateDeNaissance)) {

			if ( "".equals(numSecu)) {

				reponseAffichage += " numSecu est vide ";
			}
			if (numSecu.length() != 15) {

				reponseAffichage += " numSecu doit etre de 15 caract ";
			}

			if ("".equals(nom)) {

				reponseAffichage += " nom est vide ";
			}

			if ("".equals(adresse)) {

				reponseAffichage += " adresse est vide ";
			}

		 if ("".equals(prenom)) {

				reponseAffichage += " prenom est vide  ";
			}

			resp.sendError(400, reponseAffichage);

		}else{
		
		Collaborateur collaborateur = new Collaborateur(nom, prenom, dateDeNaissance, adresse, numSecu);
		
		  collabService.sauvegarderCollaborateur(collaborateur);
	      
		
	      req.setAttribute("listCollab", collabService.listerCollaborateurs());
	      req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		}
	      
	      
	      //		resp.getWriter().write(
//				"<p> " + collab);
//		//Todo : ajouter les collaborateur dans la list

	}
	}
	
	



