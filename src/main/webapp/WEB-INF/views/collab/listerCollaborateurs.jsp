<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

    <title>Index</title>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Collaborateurs
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="statistique.html">Statistiques</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="activite.html">Activités</a>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
    <section class="container-fluid">
        <div class="row justify-content-end mt-3">


            <a href="<%=request.getContextPath() %>/collaborateurs/Creer"  class="btn btn-outline-dark">Ajouter un nouveau collaborateur</a>



        </div>


    </section>
    <section class="container-fluid">

        <h1>Les Collaborateurs</h1>


        <div class="row">


            <div class="col-md-4">
                <p>Rechercher un nom ou un prénom qui commence par :</p>
            </div>

            <div class="input-group mb-3 col-md-4">
                <input type="text" class="form-control" aria-label="Recipient's username" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">Button</button>
                </div>
            </div>

            <div class="form-check col-md-3 offset-md-1">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                <label class="form-check-label" for="defaultCheck1">
                    Voir les collaborateurs désactivé
                </label>
            </div>


        </div>
        <div class="row mb-3">
            <div class="col-md-4 ">
                <p>Filtrer par département:</p>
            </div>
<%List<Departement> departement = (List<Departement>)request.getAttribute("listDepart"); %>
            <div class="input-group col-md-4">
                <select class="custom-select" id="selectDepartement">
                    <option selected>Tous.</option>
                    <% for( Departement d : departement) { %>
                    <option value=<%=d.getNom() %>><%=d.getNom() %></option>
                    <%} %>
                    
                </select>
                <div class="input-group-append">
                    <button class="btn btn-outline-light" type="button">Button</button>
                </div>
            </div>



        </div>

        <div class="row">
            
<%
List<Collaborateur> collab = (List<Collaborateur>)request.getAttribute("listCollab");

for( Collaborateur c : collab){
	
%>
                <div class="card col-md-4">
                        <div class="card-header">
                        <h5 class="card-title"> <%=c.getNom() + " " + c.getPrenom() %></h5>
                        </div>
                        <div class="row">
                            <div class = "col-md-4 text-center m-auto ">
                                
                            <img class="card-img-top inline-block " src="<%=request.getContextPath() %>/images/<%=c.getPhoto() %>" style="height: 100px; width: 100px; " alt="Card image cap">
                        
                        </div>
                            <div class="card-body col-md-8">
        
                                <p class="card-text">
                                    <p>Fonction : développeur </p>
                                    <p>Département : Territoire de belfort </p>
                                    <p>Téléphone : 0600000000 </p>
                                    <p>Email : <%=c.getEmailPro() %> </p>
        
                                </p>
                                <div class ="d-flex flex-row-reverse">
                                    <a href="editer-collab.html" class="btn btn-primary">Editer</a>
                                </div>
        
                            </div>
                        </div>
                    </div>
                <%} %>


                        </div>



        





    </section>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src ="<%=request.getContextPath() %>/javascript/script.js"></script>

</body>

</html>
