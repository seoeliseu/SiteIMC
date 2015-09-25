<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>\resources\css\estilo.css">
<script src="<%= request.getContextPath()%>/resources\script\script.js"></script>
<title>IMC - Índice de Massa Corporal</title>
</head>
<body>
	<%@ include file="fragments/fragment_topo.html" %>
	<%@ include file="fragments/fragment_menu.html" %>
	<div id="conteudo">
		<p id = "erro" ><%String retorno = (String) request.getAttribute("retorno"); if(retorno != null) out.println(retorno); %></p>
		
		<form action="calcula?action=calcularIMC" method="post">
			<label for="nome">Nome:</label>
			<input type="text" name="nome" id="nome" value=""/>
			<br>
			
			<label for="altura">Altura:</label>
			<input type="text" maxlength="4" name="altura" id="altura" value="" onkeypress='return isNumberKey(this,event)'/>
			<br>
			
			<label for="peso">Peso:</label>
			<input type="text" maxlength="6" name="peso" id="peso" value="" onkeypress='return isNumberKey(this,event)'/>
			<br><br><br>
			
			<input type="submit" name="submit" class="submit" value="Calcular" onclick="Nova()">
		</form>
	</div>
	<%@ include file="fragments/fragment_rodape.html" %>
</body>
</html>