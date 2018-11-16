<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GMJ</title>

    <!-- Bootstrap core CSS -->
    <link href="${resPath}/user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="${resPath}/user/css/business-casual.min.css" rel="stylesheet">

  </head>

  <body>
    <h1 class="site-heading text-center text-white d-none d-lg-block">
      <span class="site-heading-lower">GMJ</span>
    </h1>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav" data-spy="affix" data-offset-top="197">
      <div class="container">
          <div class="intro-button mx-auto">
              <div class="input-group" style="width:250px; position:absolute; top:-74px; left:1496px;">
                <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button">
                    <i class="fas fa-search" style="width:500px;"></i>
                </button>
              </div>
            </div>
          </div>
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">GMJ</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto" style="list-style:none;">
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="home.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="../Geocode">Map</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="products">construct</a>
            </li>
              <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="community">community</a>
              </li>
              <li class="nav-item px-lg-4">
                <a class="nav-link text-uppercase text-expanded" href="social media">social media</a>
              </li>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="academy">Academy</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div style="width:500px;height:400px;">
  	<jsp:include page="../Geocode.jsp"></jsp:include>
  	</div>
  
  
  
  
  
    <footer class="footer text-faded text-center py-5">
      <div class="container">
        <p class="m-0 small">Copyright &copy; GMJ 2018</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${resPath}/user/vendor/jquery/jquery.min.js"></script>
    <script src="${resPath}/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
</html>
