package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");

		if (matricule == null) {

			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, " Un matricule est attendu");
		} else {

			resp.setStatus(HttpServletResponse.SC_ACCEPTED);
			resp.setContentType("text/html");
			resp.getWriter().write("<h1>Edition de collaborateur </h1>" + "<p> Matricule :  " + matricule);

		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");

		String reponseAffichage = "les parametre suivant sont incorrect : ";
		if (matricule == null || titre == null || nom == null || prenom == null) {

			if (matricule == null) {

				reponseAffichage += "matricule ";
			}

			if (titre == null) {

				reponseAffichage += " titre ";
			}

			if (nom == null) {

				reponseAffichage += "nom ";
			}

		 if (prenom == null) {

				reponseAffichage += "prenom  ";
			}

			resp.sendError(400, reponseAffichage);

		}

		else {

			resp.setContentType("text/html");
			resp.getWriter().write(
					"<p> matricule = " + matricule + "titre  = " + titre + "prenom = " + prenom + " nom =" + nom);

		}
	}

}
