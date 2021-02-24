<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:set var="cxt" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body>
<center>
<h2>Liste des produits</h2>
</center>
<table border="1" class="table table-striped">
<tr>
<th>Id</th>
<th>prix d'achat</th>
<th>prix de vente</th>
<th>nbre</th>
<th>Description</th>
<th>Action</th>
</tr>
<c:forEach items="${liste}" var="p"> <!-- liste hiya l variable loula mte3 addAttribute -->
<tr>
<td>${p.id}</td>
<td>${p.prixachat}</td>
<td>${p.prixvente}</td>
<td>${p.nbre}</td>
<td>${p.description}</td>
<td><a href="${cxt}/deletp/${p.id}" class="btn btn-primary">supprimer</a></td> <!-- hedha yetsama Mapping -->
</tr>
</c:forEach>
</table>

</body>
</html>