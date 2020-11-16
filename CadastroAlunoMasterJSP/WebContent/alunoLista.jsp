<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de alunos</title>
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