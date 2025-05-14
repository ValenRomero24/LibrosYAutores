<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Detalle del libro</title>
		<link href="/css/estilo.css" rel="stylesheet">
	</head>
	<body>
		<div class="contenedor-detalle">
			<c:choose>
				<c:when test="${not empty mensajeError}">
					<p>${mensajeError}</p>
				</c:when>
				<c:otherwise>
					<div class="detalle">
						<h2>Detalle del Libro</h2>
						<p> <strong>Libro: </strong> ${libro} </p>
						<p> <strong>Autor: </strong> ${autor} </p>
					</div>
				</c:otherwise>
			</c:choose>
			<span class="volver">
				<a href="/libros">Volver a la lista de libros</a>
			</span>
		</div>
	</body>
</html>