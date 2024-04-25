<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "model.JavaBeans" %>
    <%@ page import = "java.util.ArrayList" %>
    <%
    	@ SuppressWarnings ("unchecked")
    	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
    %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/phone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de Contatos</h1>
	<a href="novo.html" class="botao1">Novo Contato</a>
	<a href="report" class="botao2">Relatório</a>
	<table id="tabela">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Fone</th>
			<th>E-mail</th>
			<th>Opções</th>
		</tr>
	</thead>
	<tbody>
			<% for(int i = 0; i <lista.size(); i++) {%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getFone()%></td>
					<td><%=lista.get(i).getEmail()%></td>
					<td>
						<a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="botao1">Editar</a>
						<a href="javascript: confirmar(<%=lista.get(i).getIdcon() %>)" class="botao2">Excluir</a>
					</td>
				</tr>
							
			<%} %>
	</tbody>
	</table>
	<script type="text/javascript" src="scripts/confirmador.js"></script>
</body>
</html>