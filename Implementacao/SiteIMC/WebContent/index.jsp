<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources\css\estilo.css">
<script src="<%= request.getContextPath()%>/resources\script\script.js"></script>
<title>IMC - Índice de Massa Corporal</title>
</head>
<body>
	<%@ include file="fragments/fragment_topo.html" %>
	<%@ include file="fragments/fragment_menu.html" %>

	<div id="conteudo">
		<p>O índice de massa corporal (IMC) é uma medida internacional usada para calcular se uma pessoa está no peso ideal.
		   O cálculo do IMC é feito dividindo o peso (em quilogramas) pela altura (em metros) ao quadrado.</p>
		   
		<p>Por exemplo, se o seu peso é 80kg e sua altura é 1,80m, a fórmula para calcular o IMC ficará:</p>
		IMC = 80 &divide 1,80&sup2<br>
		IMC = 80 &divide 3,24<br>
		IMC = 24,69<br>
		
		<table>
			<tr>
				<th>Resultado</th>
				<th>Situação</th>
			</tr>
			<tr>
				<td>Abaixo de 17</td>
				<td>Muito abaixo do peso</td>
			</tr>
			<tr>
				<td>Entre 17 e 18,49</td>
				<td>Abaixo do peso</td>
			</tr>
			<tr>
				<td>Entre 18,5 e 24,99</td>
				<td>Peso normal</td>
			</tr>
			<tr>
				<td>Entre 25 e 29,99</td>
				<td>Acima do peso</td>
			</tr>
		</table>
		
	</div>
	<%@ include file="fragments/fragment_rodape.html" %>
</body>
</html>