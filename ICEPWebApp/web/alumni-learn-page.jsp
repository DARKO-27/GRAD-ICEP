<%@page import="za.ac.tut.entities.Alumni"%>
<%@page import="za.ac.tut.entities.Student"%>
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
        String alumniName = alumni.getName();
        String alumniSurname = alumni.getSurname();
    %>
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="student-home-page.jsp"><%=alumniName%> <%=alumniSurname%></a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-home-page.jsp">Home</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-learn-page.jsp">E-Learn</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.html">Log-out</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="portfolio" class="portfolio" style="margin-top: 100px;">
        <div class="container">
            <h2 class="text-uppercase text-center text-secondary">E-Learning</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-1" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/udemy.png">
                    </a></div>
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-2" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/cisco.jpg">
                    </a></div>
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-3" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/coursea.png">
                    </a></div>
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-4" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/youtube.jpg">
                    </a></div>
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-5" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/bootstrap.jpg">
                    </a></div>
                <div class="col-md-6 col-lg-4"><a class="d-block mx-auto portfolio-item" href="#portfolio-modal-6" data-bs-toggle="modal">
                        <div class="d-flex portfolio-item-caption position-absolute h-100 w-100">
                            <div class="text-center text-white my-auto portfolio-item-caption-content w-100"><i class="fa fa-search-plus fa-3x"></i></div>
                        </div><img class="img-fluid" src="assets/img/portfolio/w3school.png">
                    </a></div>
            </div>
        </div>
   </section>
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
     <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Udemy</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/udemy.png">
                                <p class="mb-5">Udemy is an online learning platform founded in 2007 by Eren Bali and Oktay Caglar.0 It is a learning and teaching marketplace that identifies itself as a "learning and teaching marketplace," with a user base made up of both students and instructors.<a href="https://www.udemy.com/">Click here to visit Here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-2">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Cisco</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/cisco.jpg">
                                <p class="mb-5">Cisco Systems, Inc., commonly known as Cisco, is an American-based multinational digital communications technology conglomerate corporation headquartered in San Jose, California. Cisco develops, manufactures, and sells networking hardware, software, telecommunications equipment and other.<a href="https://www.netacad.com/">Click here to visit Here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-3">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Coursea</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/coursea.png">
                                <p class="mb-5">Coursera Inc. is a U.S.-based massive open online course provider founded in 2012 by Stanford University computer science professors Andrew Ng and Daphne Koller. Coursera works with universities and other organizations to offer online courses, certifications, and degrees.<a href="https://www.coursera.org/">Click here to visit Here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-4">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Youtube</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/youtube.jpg">
                                <p class="mb-5">Youtube is a very popular and free video sharing website that allows registered users to upload and share video clips online.<a href="https://www.youtube.com/">Click here to visit Here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-5">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Bootstrap</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/bootstrap.jpg">
                                <p class="mb-5">Bootstrap is a free and open-source front-end development framework used by web developers to create responsive and mobile-first websites.<a href="https://getbootstrap.com/docs/5.0/getting-started/introduction/">Click here to visit Here</a><p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-6">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="modal"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">W3schools</h2>
                                <hr class="star-dark mb-5"><img class="img-fluid mb-5" src="assets/img/portfolio/w3school.png">
                                <p class="mb-5">W3Schools offers free online tutorials, references and exercises in all the major languages of the web. Covering popular subjects like HTML, CSS, JavaScript, Python, SQL, Java, and many, many more.<a href="https://www.w3schools.com/">Click here to visit Here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>Copyright ©&nbsp;GRAD-ICEP 2023</small></div>
    </div>
    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
</body>

</html>