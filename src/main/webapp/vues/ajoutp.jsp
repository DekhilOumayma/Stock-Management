<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>
<center>
<h1>Ajouter produit</h1>
</center> <!-- l'action hatha bch ymchi ylawej 3l mapping eli flel controller : saveProduit -->
<form:form method="POST" action="saveProduit" modelAttribute="p"> <!-- l modelAttribute houwa eli 3tithoula fel controller -->
<div class="form-group">
<!-- L path hathi t3tini quel champs je veux selectionner dans cet obj -->
<p>Prix d'achat<form:input path="prixachat" class="form-control"/></p>
<p>Prix vente<form:input path="prixvente" class="form-control"/></p>
<p>nombre<form:input path="nbre" class="form-control"/></p>
<p>description<form:input path="description" class="form-control"/></p>
<p>magasin: <form:select path="mg.id" items="${listemg}" itemValue="id" itemLabel="nom" class="form-control form-control-lg"></form:select></p>
<input type="submit" value="Ajouter" class="btn btn-primary">
</div>
</form:form>

</body>
</html>