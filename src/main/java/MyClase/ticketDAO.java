package MyClase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.mysql.cj.conf.BooleanPropertyDefinition.AllowableValues;
import com.mysql.cj.protocol.Resultset;

public class ticketDAO {

	Connection conexion=null;
	
	public ticketDAO() throws ClassNotFoundException
	{
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
	//listar
	public List<ticket> ListarTicket()
	{
		PreparedStatement ps;
		ResultSet rs;
		List<ticket> lista=new ArrayList<>();
		
		try 
		{
			ps=conexion.prepareStatement("select * from tickets");
			rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				int id=rs.getInt("id");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
	  		    String mail=rs.getString("mail");
				int cant=rs.getInt("cant");
				int tipo_ticket=rs.getInt("tipo_ticket");
			    float total_facturado=rs.getInt("total_facturado");
			    
			    ticket ticket=new ticket(id, nombre, apellido, mail, cant, tipo_ticket, total_facturado);
			    
			    lista.add(ticket);
			}
			
			return lista;
		}
		
		catch (Exception e) 
		{
			System.out.println(e);
			return null;
		}
			
	}
	
	//insertar
	public boolean insertarTicket(ticket ticket)
	{
		PreparedStatement ps;
		double total;
		
		try 
		{
			ps=conexion.prepareStatement("insert info ticket(nombre, apellido, mail, cant, tipo_ticket, total_facturado) + "
					+ "Values (?,?,?,?,?,?)");
			
			ps.setString(1, ticket.getNombre());
			ps.setString(2, ticket.getApellido());
			ps.setString(3, ticket.getMail());
			ps.setInt(4, ticket.getCant());
			ps.setInt(5, ticket.getTipo_ticket());
			ps.setDouble(6, ticket.getTotal_facturado());
			
			ps.execute();
			return true;
		} 
		
		catch(SQLException e) 
		{
			
			System.out.println(e);
			return false;
			
		}
		
  }
	//eliminar
	
	public boolean eliminarTicket(int _id)
	{
		PreparedStatement ps;
		try 
		{
			ps=conexion.prepareStatement("delete from tickets where id=?");
			ps.setInt(1, _id);
			ps.execute();		
			return true;
		}
		
		
		catch (SQLException e) {
			System.out.println(e);
			return false;
		}		
   }
}

