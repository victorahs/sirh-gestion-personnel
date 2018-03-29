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

    <title>Creercollab</title>
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
                        <a class="nav-link" href="listerCollaborateur.jsp">Collaborateurs
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
    <section>
        <h1>Nouveau Collaborateur</h1>
        <div class="container">
            <form class ="needs-validation" action="<%=request.getContextPath() %>/collaborateurs/Creer" method="post" novalidate>
                <div class="form-group row ">
                    <label for="name" class="col-md-6 col-form-label">Nom</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="name" name ="name" required>
                        <div class="invalid-feedback">
                                Entrer le nom.
                              </div>
                    </div>
                    
                </div>

                <div class="form-group row">
                    <label for="lastname" class="col-md-6 col-form-label">Prénom</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="lastname" name ="lastname" required>
                        <div class="invalid-feedback">
                               Entrer le prénom.
                              </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="birthday" class="col-md-6 col-form-label">Date de naissance</label>
                    <div class="col-md-6">
                        <input type="date" class="form-control" id="birthday" name = "birthday" required>
                        <div class="invalid-feedback">
                                Entrer la date de naissance.
                              </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="adresse" class="col-md-6 col-form-label">Adresse</label>
                    <div class="col-md-6">
                        <textarea class="form-control" id="adresse" name="adresse" rows="3" required></textarea>
                        <div class="invalid-feedback">
                                Entrer l'adresse.
                              </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="secu" class="col-md-6 col-form-label">Numéro de sécurité sociale</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="secu" name="secu" required>
                        <div class="invalid-feedback">
                                Entrer le numéro de sécurité sociale.
                              </div>
                    </div>
                </div>
                
                <div class="row justify-content-end">
                    <button id ="actionmodal"class="btn btn-primary"  type="button">Créer</button>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Création d'un Collaborateur</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Vous êtes sur le point de créer un nouveau collaborateur</p>
                                <p>Nom : Dupond </p>
                                <p>Prénom : Paul </p>
                                <p>Date de naissance : 03/03/1994</p>
                                <p>Adresse : 05 rue de toulouse 90170 Montmartre </p>
                                <p>Numéro de sécurité sociale : xxxxxxxxxxxxxxxxxxx</p>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                                <button onclick="document.forms[0].submit();" type="button" class="btn btn-primary" data-dismiss="modal">Confirmer</button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </form>


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