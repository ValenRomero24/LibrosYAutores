<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Lista de libro </title>
		<link href="/css/estilo.css" rel="stylesheet">
	</head>
	<body>
		<div class="contenedor-libros">
			<h1>Lista de Libros</h1>
			<div class="lista-libros">
				<ul class="lista">
					<c:forEach var="libro" items="${listaLibros}">
						<li>
							<a href="/libros/${libro.getKey()}">${libro.getKey()}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</body>
</html>