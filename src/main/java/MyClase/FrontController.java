package MyClase;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontController() {
        super();
        System.out.println("constructor");
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String accion=null;
		System.out.println("doGet");
		ticketDAO ticketDAO=null;
		
		try 
		{
			ticketDAO= new ticketDAO();
		} catch (ClassNotFoundException e) 
		{
			System.out.println(e);
		}
	
		RequestDispatcher dispatcher = null;

		accion = request.getParameter("accion");

		if (accion == null || accion.isEmpty()) 
		{
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} 
		else if (accion.equals("registrar")) 
		
		{
			dispatcher = request.getRequestDispatcher("vistas/ComprarTickets.jsp");
		}
		dispatcher = request.getRequestDispatcher("vistas/ComprarTickets.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

