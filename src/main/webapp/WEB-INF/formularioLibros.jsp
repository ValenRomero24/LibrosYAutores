<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Formulario libros </title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/estilo.css" rel="stylesheet">
	</head>
	<body>
		<div class="container bg-naranja text.white">
			<div class="row">
				<h1>Agregar libro</h1>
			</div>
			<form class="formulario" action="/procesa/libro" method="POST">
				<div>
					<label for ="titulo">
						Titulo:
					</label>
					<input id="titulo" name="titulo" type="text">
				</div>
				<div>
					<label for="autor">
						Autor:
					</label>
					<input id="autor" name="autor" type="text">
				</div>
				<button class="btn btn-primary">
					Agregar
				</button>
			</form>
			<span>
				<a href="/libros">Volver a la lista de libros</a>
			</span>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>