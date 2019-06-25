
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class prueba
 */
@WebServlet("/prueba")
public class prueba extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection con;
	static String recuperacion;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public prueba() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

		// Paso 1: Cargar el driver
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("No se ha encontrado el driver para MySQL");
			return;
		}
		System.out.println("Se ha cargado el Driver de MySQL");

		// Paso 2: Establecer conexi�n con la base de datos
		String cadenaConexion = "jdbc:mysql://localhost:3306/my_closet";
		String user = "root";
		String pass = "donchekes1";

		try {
			con = DriverManager.getConnection(cadenaConexion, user, pass);
		} catch (SQLException e) {
			System.out.println("No se ha podido establecer la conexi�n con la BD");
			System.out.println(e.getMessage());
			return;
		}
		System.out.println("Se ha establecido la conexi�n con la Base de datos");

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	/*
	 * String[] casual = request.getParameterValues("casual");
	 * 
	 * int i=0; String col[] = new String[15]; //est� en 15 aunque haya 13 colores
	 * porque si pongo menos me da ArrayOutOfBoundsException for (i=0; i<=13; i++){
	 * col[i]="<p>"+request.getParameter("camiseta"+i)+"</p>"; } //Creo que el
	 * problema de esta funci�n es que no considera el valor, hay alternativa en
	 * script.js
	 * 
	 * //String casual= request.getParameter("mensaje");
	 * 
	 * 
	 * request.setAttribute("casual", casual);
	 * request.getRequestDispatcher("/miarmario.jsp").forward(request, response);
	 * 
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		PrintWriter salida = response.getWriter();

		
		salida.println("Numero: ");
		for (int i = 105; i <= 164; i++) {
			String o = Integer.toString(i);

			recuperacion = request.getParameter(o);

			if (recuperacion != null) {
				try {
					Statement sentencia = con.createStatement();

					// String sql = "INSERT INTO PARTIDO VALUES ('11111 'Pepe perez', 'calle oca
					// 54', 'Real Vallecas', 2, 2);";
					String sql = "INSERT INTO armario (id_usuario, id_prenda ) values ( 1, recuperacion)";
					int afectados = sentencia.executeUpdate(sql);
					
					/*
					 * sql =
					 * "INSERT INTO PARTIDO VALUES (3, '2018-06-12 21:30:00', 'Real Vallecas', 'Elipa FC', 4, 3);"
					 * ; sentencia.executeUpdate(sql); sql =
					 * "INSERT INTO PARTIDO VALUES (4, '2018-06-14 17:30:00', 'Ciudad Lineal CF', 'Chamber� CF', 2, 4);"
					 * ; sentencia.executeUpdate(sql);
					 */
					System.out.println("Se ha a�dido ");
				} catch (SQLException e) {
					System.out.println("Error");
					System.out.println(e.getMessage());
				}

			} else {
				salida.println("no se aniadio");
			}
		}

		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();

		// Paso 4: Cerrar la conexi�n
		try {
			con.close();
		} catch (SQLException e) {
			System.out.println("No se ha podido cerrar la conexi�n con la BD");
			System.out.println(e.getMessage());
			return;
		}
		System.out.println("Se ha cerrado la base de datos");

	}

	/*
	 * salida.println(" Zapatillas: "); for(int i =1; i<=13; i++) {
	 * 
	 * recuperacion = request.getParameter("zapatillas"+i);
	 * 
	 * if (recuperacion !=null) { salida.println(recuperacion); } else {
	 * salida.println(""); }
	 * 
	 * 
	 * }
	 */
}
