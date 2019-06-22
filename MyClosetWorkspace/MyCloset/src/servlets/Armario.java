package servlets;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Armario")
public class Armario extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Armario() {
        super();
    }
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//RequestDispatcher rd;
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		/*int i=0;
		String col[] = new String [12];
		for (i=0; i<12; i++){
			col[i]="<p>"+request.getParameter("camiseta"+i)+"</p>";
		} 
		
	    		//String casual= request.getParameter("mensaje");
	    		HttpSession sesion = request.getSession();
	    		sesion.setAttribute("casual", col[i]);
	    		response.sendRedirect("miarmario.jsp");*/
	    	
	}

	//	ServletContext contextoAplicacion = this.getServletContext();
	//	LogicaBD logicaBD = (LogicaBD) contextoAplicacion.getAttribute("miLogicaBD");
		
		//Guardo este código en comentarios para tenerlo de referencia cuando añadamos la BD
		//model.Factura fact = logicaBD.obtenerFactura(numero);
		
		
		/*if (isNullOrEmpty(casual)) {
			rd = request.getRequestDispatcher("/miarmario.jsp");
		}
		else {
			rd = request.getRequestDispatcher("/algoritmo.jsp");
		} rd.forward(request, response);
		
	}

		
	public static boolean isNullOrEmpty(String str) {
        if(str != null && !str.isEmpty())
            return false;
        return true;
    }
	
	*/
		
		
		/*if (fact == null) {
			salida.append("<p>Esta factura no existe, melón </p>");
		}
		salida.append("<table>");
		salida.append("<tr>");
		salida.append("<td><strong>NUMERO</strong></td>");
		salida.append("<td><strong>FECHA</strong></td>");
		salida.append("<td><strong>PAGADO</strong></td>");
		salida.append("<td><strong>NIF</strong></td>");
		salida.append("</tr>");
		salida.append("<tr>");
		try {
			salida.append("<td>"+fact.getNumero()+"</td>");
			salida.append("<td>"+fact.getFecha()+"</td>");
			salida.append("<td>"+fact.getPagado()+"</td>");
			salida.append("<td>"+fact.getCliente().getNif()+"</td>");
		} catch (Exception e) {
			salida.append("<p>"+e.getMessage()+"</p>");
		}
		
		//salida.append("</tr>");
		salida.append("</table>");
		
		
		
		
		int numeroAleatorio = (int) (Math.random()*3+1);
		
		if (numeroAleatorio == 1) {
			rd = request.getRequestDispatcher("/primero.jsp");
		}
		
		else if (numeroAleatorio == 2) {
			rd = request.getRequestDispatcher("/segundo.jsp");
		}
		
		else {
			rd = request.getRequestDispatcher("/tercero.jsp");
		} rd.forward(request, response);
	}
	*/


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		
		
		//String casual= request.getParameter("mensaje");
	
		
		int i=0;
		String col[] = new String[15]; //está en 15 aunque haya 13 colores porque si pongo menos me da ArrayOutOfBoundsException
		for (i=0; i<=13; i++){
			col[i]="<p>"+request.getParameter("camiseta"+i)+"</p>";
		} //Creo que el problema de esta función es que no considera el valor, hay alternativa en script.js
		
	    		//String casual= request.getParameter("mensaje");
	    		HttpSession sesion = request.getSession();
	    		sesion.setAttribute("casual", col[i]);
	    		response.sendRedirect("miarmario.jsp");
	    	
	}
		/*doGet(request, response);
	}*/





}
