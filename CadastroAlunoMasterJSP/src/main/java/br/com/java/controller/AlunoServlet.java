package br.com.java.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.java.dao.AlunoDAO;
import br.com.java.model.Aluno;

@WebServlet("/AlunoServlet")
public class AlunoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		String destino = "sucesso.jsp";
		String mensagem = "";
		List<Aluno> lista = new ArrayList<>();
		
		Aluno aluno = new Aluno();
		AlunoDAO dao = new AlunoDAO();
		
		try {
			
			if (!acao.equalsIgnoreCase("Listar")) {
				aluno.setMatricula(Long.parseLong(request.getParameter("matricula")));
				aluno.setNome(request.getParameter("nome"));
				aluno.setTelefone(request.getParameter("telefone"));
				aluno.setEmail(request.getParameter("email"));
				
				try {
					DateFormat df = new SimpleDateFormat("dd/MM/yyyy");					
					aluno.setDataCadastro(df.parse(request.getParameter("dataCadastro")));
				} catch (Exception e) {
					// TODO: handle exception
					aluno.setDataCadastro(new Date());
				}
				
			}
				
				if (acao.equalsIgnoreCase("Incluir")) {
					if (dao.existe(aluno)) {
						mensagem = "Matrícula informada já existe!";
					} else {
						
						dao.inserir(aluno);

					}
				} else if (acao.equalsIgnoreCase("Alterar")) {
					dao.alterar(aluno);
				} else if (acao.equalsIgnoreCase("Excluir")) {
					dao.excluir(aluno);
				} else if (acao.equalsIgnoreCase("Consultar")) {
					request.setAttribute("aluno", aluno);
					aluno = dao.consultar(aluno);
					destino = "aluno.jsp";
			}
		} catch (Exception e) {
			// TODO: handle exception
			mensagem += e.getMessage();
			destino = "erro.jsp";
			e.printStackTrace();
		}
		
		if (mensagem.length() == 0) {
			mensagem = "Aluno Cadastrado com sucesso!";
		} else {
			destino = "erro.jsp";

		}
		
		lista = dao.listar();
		request.setAttribute("listaAluno", lista);
		request.setAttribute("mensagem", mensagem);
		
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

}
