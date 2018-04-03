<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<!doctype html>

<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Index</title>
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="#">Collaborateurs
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="statistique.html">Statistiques</a></li>
					<li class="nav-item"><a class="nav-link" href="activite.html">Activités</a>
					</li>

				</ul>
			</div>
		</nav>
	</header>
	<section class="container-fluid">
		<div class="row justify-content-end mt-3"></div>


	</section>
	<section class="container-fluid">

		<%
			Collaborateur collab = (Collaborateur)request.getAttribute("collaborateur");
		%> 


		<div class="row mb-3">
			<div class="col-md-8">

				<h1 class="text-center"><%=collab.getNom()%>  <%=collab.getPrenom()%> - <%=collab.getMatricule() %></h1>

			</div>

			<div class="form-check col-md-3 offset-md-1">
				<input class="form-check-input" type="checkbox" value=""
					id="defaultCheck1"> <label class="form-check-label"
					for="defaultCheck1"> Désactiver </label>
			</div>




		</div>

	</section>

	<section class="container-fluid">

		<div class="row">
			<div class="col-md-5">
				<img src="img.svg" class="rounded mx-auto d-block" alt="...">
			</div>
			<div class="col-md-5">
				<form action="<%=request.getContextPath()%>/collaborateurs/Editer" method="post">
					<div id="accordion">
					<input type="hidden" id="matricule" placeholder="matricule" name="matricule" value="<%=collab.getMatricule()%>">
						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<button class="btn btn-link" data-toggle="collapse"
										data-target="#collapseOne" aria-expanded="true"
										aria-controls="collapseOne">Identité</button>
								</h5>
							</div>

							<div id="collapseOne" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordion">
								<div class="card-body">
									<div class="form-group row ">
										<label for="civi" class="col-md-6 col-form-label">Civilité</label>

										<div class="col-md-6">
											<select class="form-control" id="civi">
												<option>Mr</option>
												<option>Mme</option>

											</select>
										</div>
									</div>

									<div class="form-group row ">
										<label for="name" class="col-md-6 col-form-label">Nom</label>
										<div class="col-md-6">
											<input type="text" readonly class="form-control-plaintext" id="name" value="<%=collab.getNom()%>">
										
										</div>

									</div>

									<div class="form-group row">
										<label for="lastname" class="col-md-6 col-form-label">Prénom</label>
										<div class="col-md-6">
											<input type="text" readonly class="form-control-plaintext" id="lastname" value="<%=collab.getPrenom() %>">
											
										</div>
									</div>


									<div class="form-group row">
										<label for="birthday" class="col-md-6 col-form-label">Date
											de naissance</label>
										<div class="col-md-6">
											<input type="text"   class="form-control-plaintext" id="birthday" value="<%=collab.getDateDeNaissance() %>">
									
										</div>
									</div>


									<div class="form-group row">
										<label for="adresse" class="col-md-6 col-form-label">Adresse</label>
										<div class="col-md-6">
											<textarea class="form-control" id="adresse" name = "adresse" rows="3" required></textarea>
											<div class="invalid-feedback">Entrer l'adresse.</div>
										</div>
									</div>


									<div class="form-group row">
										<label for="secu" class="col-md-6 col-form-label">Numéro
											de sécurité sociale</label>
										<div class="col-md-6">
											<input type="text" class="form-control-plaintext" id="secu" value="<%=collab.getNumeroSecuriteSocial() %>" >
										
										</div>
									</div>

									<div class="form-group row">
										<label for="tel" class="col-md-6 col-form-label">Téléphone</label>
										<div class="col-md-6">
											<input type="telephone" class="form-control" id="tel"
												required>
											<div class="invalid-feedback">Entrer le numéro de
												téléphone.</div>
										</div>
									</div>


								</div>






							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header" id="headingTwo">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" data-toggle="collapse"
									data-target="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo">Poste</button>
							</h5>
						</div>
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordion">
							<div class="card-body">
								<div class="form-group row ">
									<label for="departement" class="col-md-6 col-form-label">Département</label>

									<div class="col-md-6">
										<select class="form-control" id="departement">
											<option>Compatibilité</option>
											<option>Ressources humaines</option>
											<option>Informatique</option>

										</select>
									</div>
								</div>

								<div class="form-group row ">
									<label for="named" class="col-md-6 col-form-label">Nom</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="named" name="named" required>
										<div class="invalid-feedback">Entrer le nom.</div>
									</div>

								</div>


							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header" id="headingThree">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" data-toggle="collapse"
									data-target="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree">Coordonnées bancaire</button>
							</h5>
						</div>
						<div id="collapseThree" class="collapse"
							aria-labelledby="headingThree" data-parent="#accordion">
							<div class="card-body">

								<div class="form-group row ">
									<label for="iban" class="col-md-6 col-form-label">IBAN</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="iban" name ="iban" required>
										<div class="invalid-feedback">Entrer l'iban.</div>
									</div>

								</div>

								<div class="form-group row ">
									<label for="bic" class="col-md-6 col-form-label">BIC</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="bic" name = "bic" required>
										<div class="invalid-feedback">Entrer le bic.</div>
									</div>

								</div>


							</div>
						</div>
					</div>
					<div class="d-flex flex-row-reverse">
						<button id="" class="btn btn-primary" type="submit">Sauvegarder</button>
					</div>
			</div>

			</form>

		</div>
		</div>







	</section>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script src="script.js"></script>
</body>

</html>