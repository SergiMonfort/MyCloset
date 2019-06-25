
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
	static int contador=1;

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

		// Paso 2: Establecer conexión con la base de datos
		String cadenaConexion = "jdbc:mysql://localhost:3306/my_closet2";
		String user = "root";
		String pass = "donchekes1";

		try {
			con = DriverManager.getConnection(cadenaConexion, user, pass);
		} catch (SQLException e) {
			System.out.println("No se ha podido establecer la conexión con la BD");
			System.out.println(e.getMessage());
			return;
		}
		System.out.println("Se ha establecido la conexión con la Base de datos");

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
	 * int i=0; String col[] = new String[15]; //está en 15 aunque haya 13 colores
	 * porque si pongo menos me da ArrayOutOfBoundsException for (i=0; i<=13; i++){
	 * col[i]="<p>"+request.getParameter("camiseta"+i)+"</p>"; } //Creo que el
	 * problema de esta función es que no considera el valor, hay alternativa en
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

	

		
		
		for (int i = 105; i <= 164; i++) {
			String o = Integer.toString(i);

			recuperacion = request.getParameter(o);
			

			if (recuperacion != null) {
				int recu=Integer.parseInt(recuperacion);
				try {
					Statement sentencia = con.createStatement();

					// String sql = "INSERT INTO PARTIDO VALUES ('11111 'Pepe perez', 'calle oca
					// 54', 'Real Vallecas', 2, 2);";
					
					String sql = "INSERT INTO armario2 (id_usuario, id_prenda )" + "VALUES ( '" +contador+ "', '" +recu+ "')"  ;
					
					sentencia.executeUpdate(sql);
					
					/*
					 * sql =
					 * "INSERT INTO PARTIDO VALUES (3, '2018-06-12 21:30:00', 'Real Vallecas', 'Elipa FC', 4, 3);"
					 * ; sentencia.executeUpdate(sql); sql =
					 * "INSERT INTO PARTIDO VALUES (4, '2018-06-14 17:30:00', 'Ciudad Lineal CF', 'Chamberí CF', 2, 4);"
					 * ; sentencia.executeUpdate(sql);
					 */
					System.out.println("Se ha añdido ");
				} catch (SQLException e) {
					System.out.println("Error");
					System.out.println(e.getMessage());
				}

			} contador++;
		}

		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();

		// Paso 4: Cerrar la conexión
		try {
			con.close();
		} catch (SQLException e) {
			System.out.println("No se ha podido cerrar la conexión con la BD");
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
