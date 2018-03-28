package dev.sgp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;

public class CreerCollaborateurController extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp").forward(req, resp);
	}
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		
		
		String nom = req.getParameter("name");
		
		resp.getWriter().write(
				"<p> nom =" + nom);
		//Todo : ajouter les collaborateur dans la list

	}
	}
	
	



