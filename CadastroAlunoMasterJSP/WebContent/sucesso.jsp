<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>P�gina de sucesso</title>
</head>
<body>
 <H1>
  Mensagem JSTL:
  <c:out value="${mensagem}" />
 </H1>
 <jsp:include page="alunoLista.jsp" />

</body>
</html>