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
        <a class="navbar-brand text-white"><img src="Img/codoacodo.png" alt="Codoacodo" height="90">Conf Bs
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
              <a class="nav-link texto-compra" href="FrontContoller?accion=registrar">Comprar Tickets</a>
            </li>
            <li class="nav-item">
              <a class="nav-link texto-worning" href="FrontContoller?accion=backoffice">Back Office</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <!--Carrousel (Imagenes y texto)-->
  <div id="carouselSlidesOnly" class="carousel slide position-relative d-flex align-items-center justify-content-end c"
    data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="Img/ba1.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 1">
      </div>
      <div class="carousel-item">
        <img src="Img/ba2.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 2">
      </div>
      <div class="carousel-item">
        <img src="Img/ba3.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 3">
      </div>
    </div>
    <div class="position-absolute text-end col-md-6 col-12 text-light px-5">
      <div class="d-none d-md-block pt-5 mt-5 ">
        <h1>
          Conf Bs As
        </h1>
        <p>
          Bs As llega por primera vez a Argentina. Un evento para compartir con
          nuestra comunidad el conocimiento y experiencia de los expertos que
          están creando el futuro de Internet. Ven a conocer a miembros del
          evento, a otros estudiantes de Codo a Codo y los oradores de primer
          nivel que tenemos para ti. ¡Te esperamos!
        </p>
      </div>
      <div class="d-none d-sm-block d-md-none text-center mt-5">
        <h1>
          Conf Bs As
        </h1>
        <p>
          Por primera vez a Argentina. Veni a conocer los miembros del
          evento, estudiantes y oradores de primer
          nivel que tenemos para ti. ¡Te esperamos!
        </p>
      </div>
      <div class="d-block d-sm-none text-center mb-0 pb-0 mt-5">
        <p class="mb-0 pt-3">
          Conoce los miembros del
          evento. ¡Te esperamos!
        </p>
      </div>
      <div class="pt-1 d-grid gap-2 d-md-block">
        <button type="button" class="btn btn-outline-light">Quiero ser orador</button>
        <button type="button" class="btn colorverde text-light btn btn-success">Comprar tickets</button>
      </div>
    </div>
  </div>

  <br>
  <!-- oradores -->
  <div class=" mb-3 container col-6">
    <h5 class="text-center ">Conoce a Los </h5>
    <h2 class="text-center"><b>Oradores</b></h2>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="card">
          <img src="Img/steve.jpg" class="rounded-top-2" height="415px" alt="steve jobs">
          <div class="card-body">
            <span class="badge text-bg-warning">JavaScript</span>
            <span class="badge text-bg-info">React</span>
            <h3>Steve Jobs</h3>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid tempora consequatur
              repellendus deserunt totam, unde in dolor voluptate quo accusamus quod, sed esse quia rerum nihil nam
              asperiores, debitis laudantium.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <img src="Img/bill.jpg" class="rounded-top-2" height="415px" alt="bill gates">
          <div class="card-body">
            <span class="badge text-bg-warning">JavaScript</span>
            <span class="badge text-bg-info">React</span>
            <h3>Bill Gates</h3>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid tempora consequatur
              repellendus deserunt totam, unde in dolor voluptate quo accusamus quod, sed esse quia rerum nihil nam
              asperiores, debitis laudantium.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <img src="Img/ada.jpeg" class="rounded-top-2" height="415px" alt="ada lovelace">
          <div class="card-body">
            <span class="badge text-bg-secondary">Negocios</span>
            <span class="badge text-bg-danger">Startups</span>
            <h3>Ada Lovelace</h3>
            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid tempora consequatur
              repellendus deserunt totam, unde in dolor voluptate quo accusamus quod, sed esse quia rerum nihil nam
              asperiores, debitis laudantium.</p>
          </div>
        </div>
      </div>
    </div>


  </div>
  <br>
  <!-- foto playa con texto-->
  <div class="container-fluid">
    <div class="card mb-3 bg-custom">
      <div class="row">
        <div class="col-6">
          <img src="Img/honolulu.jpg" class="img-fluid rounded-start" alt="Isla">
        </div>
        <div class="col-6">
          <div class=" card-body bg-custom text-white">
            <h5 class="card-title">Bs As - Octubre</h5>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit rerum quas
              adipisci iste soluta. Facilis ab expedita architecto perferendis placeat exercitationem ducimus mollitia
              distinctio commodi cumque unde, fugiat, rerum ea sed eos consectetur! Magni quas ratione deleniti magnam
              repudiandae ducimus consectetur expedita atque quisquam excepturi voluptatibus quibusdam sunt dolorem
              incidunt sint itaque porro, cumque at ut! Iste sapiente quae ipsum enim pariatur recusandae minus eligendi
              voluptas culpa officia quibusdam hic doloremque magni, sint saepe soluta praesentium placeat autem odio
              officiis veniam voluptate! Illo dolores dolor officiis aperiam, maxime, sed, eos eum nobis culpa corporis
              magnam ea quaerat pariatur quam quae.</p>
            <button type="button" class="btn btn-outline-light">Conoce Mas</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>

  <!--formulario-->
  <div class="mb-3 container col-6">
    <h6 class="text-center">Convíertete en un </h6>
    <h2 class="text-center"><b>Orador</b></h2>
    <p class="text-center">anotáte como Orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
    <form class="row">
      <div class="col-md-6">
        <label class="form-label"></label>
        <input type="text" class="form-control" placeholder="Nombre">
      </div>
      <div class="col-md-6">
        <label class="form-label"></label>
        <input type="text" class="form-control" placeholder="Apellido">
      </div>
      <div class="col-md-12">
        <label class="form-label"></label>
        <textarea class="form-control" placeholder="Sobre qué quieres hablar?" rows="3"></textarea>
        <p>Recuerda incluir un título para tu charla</p>
      </div>
      <div class="col-12">
        <button type="submit" class="btn btn-secondary col-12 button-enviar">Enviar</button>
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
</body>

</html>