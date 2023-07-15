<%@page import="za.ac.tut.entities.Alumni"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home -GRAD-ICEP</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <%
        Alumni alumni = (Alumni)session.getAttribute("alumni");
        String name = alumni.getName();
        String surname = alumni.getSurname();
    %>
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top"><%=name%> <%=surname%></a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-home-page.jsp">Home</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-learn-page.jsp">E-Learn</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.html">Log-out</a></li>
                </ul>
            </div>
        </div>
    </nav>
 <main class="container" style="margin-top:200px;">
  <div class="bg-light p-5 rounded mt-3">
    <h1>Alumni to view Available Internship and Jobs</h1>
    <p class="lead">This is where Alumni will be able to view available job post<p>
    <a class="btn btn-lg btn-primary" href="AlumniViewJobSessionServlet.do" role="button">view Jobs&raquo;</a>
  </div>
</main>
<main class="container" style="margin-top:50px;margin-bottom:50px;">
  <div class="bg-light p-5 rounded mt-3">
    <h1>Alumni to view Available Internship and Jobs by Qualification Name</h1>
    <p class="lead">This is where Alumni will be able to view available job post by qualification name registered in the GRAD-ICEP<p>
    <a class="btn btn-lg btn-primary" href="AlumniViewJobByQualificationSessionServlet.do" role="button">view Jobs&raquo;</a>
  </div>
    
</main>
    <footer class="text-center footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Location</h4>
                    <p>2215 John Daniel Drive<br>Clark, MO 65243</p>
                </div>
                <div class="col-md-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase">Around the Web</h4>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="btn btn-outline-light text-center btn-social rounded-circle" role="button" href="#"><i class="fa fa-facebook fa-fw"></i></a></li>
                        <li class="list-inline-item"><a class="btn btn-outline-light text-center btn-social rounded-circle" role="button" href="#"><i class="fa fa-google-plus fa-fw"></i></a></li>
                        <li class="list-inline-item"><a class="btn btn-outline-light text-center btn-social rounded-circle" role="button" href="#"><i class="fa fa-twitter fa-fw"></i></a></li>
                        <li class="list-inline-item"><a class="btn btn-outline-light text-center btn-social rounded-circle" role="button" href="#"><i class="fa fa-dribbble fa-fw"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>Copyright ©&nbsp;GRAD-ICEP 2023</small></div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
</body>

</html>