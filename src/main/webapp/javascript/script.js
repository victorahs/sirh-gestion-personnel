 
/// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles
	// to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();


var url = location.search;
if (url === '?errors') {
  var errors = document.querySelectorAll('input, textarea');
  errors.forEach(param => {param.classList.add('is-invalid')});
}



$(document).ready(function(){
    $("#actionmodal").click(function(){
        $("#exampleModalCenter").modal();
    });
    
    $("#selectDepartement").change(function () {
        var v = $("#selectDepartement :selected").attr('value');
        
        document.location.href="http://localhost:8080/sirh-gestion-personnel/collaborateurs/Creer?filter="+v;
        
// $.post("http://localhost:8080/sirh-gestion-personnel/collaborateurs/Creer",
// function(v, status){
// alert("Data: " + data + "\nStatus: " + status);
// });
    });
});

$("#name").change(function(){
	  $("#nameMod").html($(this).val());
	});
	
	$("#lastname").change(function(){
	  $("#lastnameMod").html($(this).val());
	});
	
	$("#birthday").change(function(){
	  $("#birthdayMod").html($(this).val());
	});
	
	$("#adresse").change(function(){
	  $("#adresseMod").html($(this).val());
	});
	
	$("#secu").change(function(){
	  $("#secuMod").html($(this).val());
	});
	
	document.querySelector("#buttonModal").addEventListener("click", function(){
	  $("#collaborateurModal").modal();
	});


