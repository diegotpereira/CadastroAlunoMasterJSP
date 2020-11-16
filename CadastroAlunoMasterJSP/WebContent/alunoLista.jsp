<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de alunos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

 <div align="center">
  <P>Lista de Alunos</P>
  <table border="1">
   <tr>
    <td>Matricula</td>
    <td>Nome</td>
    <td>Telefone</td>
    <td>Data Cadastro</td>
    <td>Comandos</td>
   </tr>
   <c:forEach var="aluno" items="${listaAluno}">
    <tr>
     <td>${aluno.matricula}</td>
     <td>${aluno.nome}</td>
     <td>${aluno.telefone}</td>
     <td><fmt:formatDate value="${aluno.dataCadastro}" type="both" pattern="dd/MM/yyyy"/>  
     <td><a href="AlunoServlet?acao=Excluir&matricula=${aluno.matricula}">Excluir</a></td>
    </tr>
   </c:forEach>
  </table>
  <c:if test="${fn:length(listaAluno) > 0}">
     Existem ${fn:length(listaAluno)} alunos!
   </c:if><br>   
 </div>
 <a href="menu.jsp">Voltar</a>

</body>
</html>