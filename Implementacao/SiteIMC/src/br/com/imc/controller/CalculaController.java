package br.com.imc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({ "/CalculaController", "/calcula" })
public class CalculaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CalculaController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch (request.getParameter("action")) {
		
		case "calcularIMC":
			this.calcularIMC(request, response);
			break;

		default:
			break;
		}
	}
	
	private void calcularIMC(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nome = request.getParameter("nome");
		String altura = request.getParameter("altura");
		String peso = request.getParameter("peso");
		String resultado = "Erro ao calcular";
		
		if(nome.equals("")||altura.equals("")||peso.equals("")){resultado="Preencha todos os campos.";
			request.setAttribute("retorno", resultado);
			RequestDispatcher rd = request.getRequestDispatcher("/calculo.jsp");
			rd.forward(request, response);
		}else{
		
			double imc = Double.parseDouble(peso)/((Math.pow(Double.parseDouble(altura), 2)));
			
			if(imc < 17)resultado = "muito abaixo do peso.";
			if(imc >= 17 && imc <= 18.49 )resultado="abaixo do peso.";
			if(imc >= 18.5 && imc <= 24.99)resultado="peso normal.";
			if(imc >= 25)resultado="acima do peso.";
			
			String retorno = "Olá "+nome+",<br>"
					+ "Você pesa atualmente "+peso+"kg e mede "+altura+" m.<br>"
							+ "De acordo com a tabela IMC você está";
			
			if(resultado.equals("peso normal.")){retorno+=" em seu "+resultado;}
			else{retorno+=" "+resultado;}
			
			request.setAttribute("retorno", retorno);
			RequestDispatcher rd = request.getRequestDispatcher("/resultado.jsp");
			rd.forward(request, response);
		
		}
	}

}
