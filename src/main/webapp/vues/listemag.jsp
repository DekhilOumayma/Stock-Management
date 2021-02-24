<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:set var="cxt" value="${pageContext.request.contextPath }"/> <!-- zedna hedhi pour eviter le surcharge eli ysir fi les pages  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>
<center>
<h2>Liste des magasin</h2>
<table class="table table-striped">
<thead>
<tr>
<th>Nom</th>
<th>Lieu</th>
<th>Produits disponibles</th>
</tr>
</thead>
<tbody>
<c:forEach items="${liste}" var="m"><!-- nekteb l variable loula fi addAttribute et var="m" hiya variable locale-->
<tr>
<td>${m.nom}</td>
<td>${m.lieu}</td>
<!-- hatha esmaa mapping : /magasin/.... --> 
<!-- fama deux methodes fl communinication hathi lwla:tetsama acces bl path, w 2 hiya nktbou:/magasn?id=${m.id} ttsama req mapping où l'envoi se fait dans la req-->
<td><a href="${cxt}/magasin/${m.id}" class="btn btn-primary">liste des produits</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<a href="ajoutProduit" class="btn btn-primary">ajouter un produit</a>
</center>
</body>
</html>