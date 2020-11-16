<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de alunos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

 <div align="center">
  <form method="post" action="AlunoServlet">
   <fieldset>
    <legend>Cadastro de Alunos</legend>
    <label>Matr�cula: 
    
      </label>
      <input name="matricula" required value="${aluno.matricula}" placeholder="2236541" /><br /> 
      
      <label>Name:
      
      </label><input name="nome" autofocus="autofocus" placeholder="Nome" value="${aluno.nome}" /><br /> 
      
      <label>Telefone:
      </label><input type="tel" name="telefone" placeholder="9999-9999"
     value="${aluno.telefone}" /><br /> <label>Email:</label><input
     type="email" name="email" placeholder="andre@feltex.com.br"
     value="${aluno.email}" /><br /> <label>Data Cadastro:</label><input
     type="date" name="dataCadastro" value="${aluno.dataCadastro}"
     placeholder="10/10/2014" /><br /> <label>A��o</label> <select
     name="acao" required>
     <option selected value="Incluir">Incluir</option>
     <option value="Alterar">Alterar</option>
     <option value="Excluir">Excluir</option>
     <option value="Consultar">Consultar</option>
    </select><br /> <input type="submit" value="Enviar"> <input
     type="reset" value="Limpar"> <br />
   </fieldset>
  </form>
 </div>

</body>
</html>