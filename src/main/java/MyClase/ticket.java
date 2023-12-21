package MyClase;

public class ticket {

	private int id;
	private String nommbre;
	private String apellido;
	private String mail;
	private int cant;
	private int tipo_ticket;
	private float total_factuado;
	
	
	public ticket(int id, String nommbre, String apellido, String mail, int cant, int tipo_ticket,
			float total_factuado) {
		super();
		this.id = id;
		this.nommbre = nommbre;
		this.apellido = apellido;
		this.mail = mail;
		this.cant = cant;
		this.tipo_ticket = tipo_ticket;
		this.total_factuado = total_factuado;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNommbre() {
		return nommbre;
	}
	public void setNommbre(String nommbre) {
		this.nommbre = nommbre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getCant() {
		return cant;
	}
	public void setCant(int cant) {
		this.cant = cant;
	}
	public int getTipo_ticket() {
		return tipo_ticket;
	}
	public void setTipo_ticket(int tipo_ticket) {
		this.tipo_ticket = tipo_ticket;
	}
	public float getTotal_facturado() {
		return total_factuado;
	}
	public void setTotal_factuado(float total_factuado) {
		this.total_factuado = total_factuado;
	}
	public String getNombre() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
