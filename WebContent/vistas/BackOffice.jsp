<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="MyClase.ticket"%>
 <%@page import="MyClase.ticketDAO"%>
 <%@page import="java.util.List"%>
 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="Css/style.css">
<title>Back Office</title>
</head>
<body>
  <div class="container">
    <h1 class="text-primary">Tickets</h1>
 		<div class="row">
 			<table class="table table-striped"></table>
 				<thead>	
 					<th>ID Venta</th>
 					<th>Nombre</th>
 					<th>Apellido</th>
 					<th>Cantidad</th>
 					<th>Tipo</th>
 					<th>Total</th>
 					<th>Eliminar</th>
 				</thead>

 			<%
				List<ticket> resultado = null;
				ticketDAO ticket = new ticketDAO();
				resultado = ticket.ListarTicket();
				int totalTickets = 0;

				for (int i = 0; i < resultado.size(); i++) {
					String rutaEliminar = "FrontController?accion=eliminar&id=" + resultado.get(i).getId();
					String tipoTicket = "";

					switch (resultado.get(i).getTipo_ticket()) {
					case 1:
						tipoTicket = "Estudiante";
						break;

					case 2:
						tipoTicket = "Trainee";
						break;

					case 3:
						tipoTicket = "Junior";
						break;
					}
				%>
				<tr>
					<td><%=resultado.get(i).getId()%></td>
					<td><%=resultado.get(i).getNombre()%></td>
					<td><%=resultado.get(i).getApellido()%></td>
					<td><%=resultado.get(i).getMail()%></td>
					<td><%=resultado.get(i).getCant()%></td>
					<td><%=tipoTicket%></td>
					<td><%=resultado.get(i).getTotal_facturado()%></td>
					<td class="text-center"><a href=<%=rutaEliminar%>>X</a></td>
				</tr>
				<%
				totalTickets += resultado.get(i).getTotal_facturado();
				}
				%>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-danger"><%=totalTickets%></td>
					<td></td>
				</tr>
			</table>
			<a class="btn btn-success col-2 m-2"
				href="FrontController?accion=volver">Volver</a>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script src="../js/scriptTicket.js"></script>

</body>
</html>