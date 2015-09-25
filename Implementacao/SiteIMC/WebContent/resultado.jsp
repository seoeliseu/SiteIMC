<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources\css\estilo.css">
<title>IMC - Índice de Massa Corporal</title>
<script src="<%= request.getContextPath()%>\resources\script\script.js"></script>
</head>
<body>
	<%@ include file="fragments/fragment_topo.html" %>
	<%@ include file="fragments/fragment_menu.html" %>
	<div id="conteudo">
		<p><%String retorno = (String) request.getAttribute("retorno"); out.println(retorno); %></p>
		
		
		<br/><br/><br/><br/><br/><br/><br/>
		
		<a  href="calculo.jsp" id="voltar">Voltar a página anterior</a>
	</div>
	<%@ include file="fragments/fragment_rodape.html" %>
</body>
</html>