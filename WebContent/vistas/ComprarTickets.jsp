<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&family=PT+Sans&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="Css/style.css">
  <title>Codo a Codo</title>
</head>

<body>
  <header class="color-header">
    <nav class="navbar navbar-expand-lg ">
      <div class="container-fluid">
        <a class="navbar-brand text-white" href="index.html">Conf Bs
          As</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto ">
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">La Conferencia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Los Oradores</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Lugar Y Fecha</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Conviértete En Orador</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-compra" href="#">Comprar Tickets</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <br>
  <!--columnas-->
  <div class="card-container">
    <div class="card border-primary border mb-3" style="max-width: 18rem;">
      <div class="card-body ">
        <h5 class="card-title text-center">Estudiante</h5>
        <p class="card-text">Tiene un descuento </p>
        <p class="card-text text-center"><b>80%</b></p>
        <p class="card-text text-secondary">* presentar documentación</p>
      </div>
    </div>
    <div class="card border-primary border mb-3" style="max-width: 18rem;">
      <div class="card-body ">
        <h5 class="card-title text-center">Trainee</h5>
        <p class="card-text">Tiene un descuento</p>
        <p class="card-text text-center"><b>50%</b></p>
        <p class="card-text text-secondary">* presentar documentación</p>

      </div>
    </div>
    <div class="card border-warning border mb-3" style="max-width: 18rem;">
      <div class="card-body ">
        <h5 class="card-title text-center">Junior</h5>
        <p class="card-text">Tiene un descuento</p>
        <p class="card-text text-center"><b>15%</b></p>
        <p class="card-text text-secondary">* presentar documentación</p>
      </div>
    </div>
  </div>
  <!--formulario-->
  <div class="mb-3 container col-6">
    <h6 class="text-center">VENTA</h6>
    <h2 class="text-center">VALOR DEL TICKET $200</h2>
    <form action="FrontContoller?accion=insert" method="post" class="row">
      <div class="col-md-6">
        <label class="form-label"></label>
        <input type="text" class="form-control" placeholder="Nombre" name="nombre">
      </div>
      <div class="col-md-6">
        <label class="form-label"></label>
        <input type="text" class="form-control" placeholder="Apellido" name="apellido">
      </div>
      <div class="col-md-12">
        <label class="form-label"></label>
        <input type="email" class="form-control" placeholder="Correo" name="mail">
      </div>
      <div class="col-md-6">
        <label class="form-label" name="cant">Cantidad</label>
        <div class="form-label">
          <input type="text" class="form-control" placeholder="Cantidad" id="cantidadTickets">
        </div>
      </div>
      <div class="col-md-6">
        <label class="form-label">Categoria</label>
        <select class="form-select" id="select-categoria" name="categoria">
          <option value="1">Estudiante</option>
          <option value="2">Trainee</option>
          <option value="3">Junior</option>

        </select>
      </div>
      <div class="col-12">
        <div class="alert alert-primary" role="alert">Total a Pagar: $<span id="totalAPagar">0</span></div>
      </div>
      <div class="d-md-flex justify-content-md-between">
        <button class="btn btn-secondary button-enviar col-sm-5" id="borrarBtn">Borrar</button>
        <button type="submit" id="resumenBtn" class="btn btn-secondary button-enviar col-sm-5"
          onclick="calcularTotal()">Resumen</button>
      </div>
    </form>
  </div>

  <!--footer-->
  <footer class="footer-color">
    <div>
      <div>
        <div class="container-fluid">
          <ul class="d-flex m-4 sin-punto justify-content-evenly ">
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Preguntas Frecuentes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Contactános</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Prensa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Conferencias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Términos y <br> condiciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Privacidad</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-header" href="#">Estudiantes</a>
            </li>

          </ul>
        </div>

      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
  <script src="Js/index.js"></script>
</body>

</html>