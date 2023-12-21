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
	private static final String Interger = null;
       
    
    public FrontController() {
        super();
    
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String accion=null;
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
		else if (accion.equals("insert")) 
			
		{
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			String mail=request.getParameter("mail");
			int cant=Integer.parseInt(request.getParameter("cant"));
			int categoria=Integer.parseInt(request.getParameter("categoria"));
			
			//categoria
			ticket ticket=new ticket(0, nombre, apellido, mail, cant, categoria, 200);
			ticketDAO.insertarTicket(ticket);
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if (accion.equals("BackOffice")) 
			
		{
			dispatcher = request.getRequestDispatcher("vistas/BackOffice.jsp");
		}
		else if (accion.equals("Volver")) 
			
		{
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

