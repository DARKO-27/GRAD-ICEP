<%@page import="za.ac.tut.entities.Alumni"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Job"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumni View All Jobs</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&amp;display=swap">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
</head>
    </head>
    <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <%
        Alumni alumni = (Alumni)session.getAttribute("alumni");
        String alumniName = alumni.getName();
        String alumniSurname = alumni.getSurname();
        
        List<Job> jobs = (List<Job>)session.getAttribute("job");
    %>
       <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top"><%=alumniName%> <%=alumniSurname%></a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-home-page.jsp">Home</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="alumni-learn-page.jsp">E-Learn</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.html">Log-out</a></li>
                </ul>
            </div>
        </div>
    </nav>
   <%
        for(int i = 0; i < jobs.size();i++)
        {
            
            
            Job job = jobs.get(i);
            String jobName = job.getJobName();
            String jobLocation = job.getJobLocation();
            String jobDescription = job.getJobDescription();
            String companyName = job.getCompanyName();
            String jobStipend = job.getJobStipend();
            String jobRequirements = job.getJobRequirements();
            String jobType = job.getJobType();
            String NumberOfCandicates = job.getJobNumberOfCandicates();
            String jobEmail = job.getJobEmail();
            String jobLink = job.getJobLink();
            String jobFaculty = job.getJobFaculty();
            String jobQualificationType = job.getJobQualificationType();
            String jobQualificationName = job.getJobQualificationName();
            Date  postedDate = job.getCreationDate();
            //Date currentDate  = new Date();
            //SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy");
	    //String posted = formatter.format(postedDate);
            //String current = formatter.format(currentDate);
            
            //LocalDate start = LocalDate.parse(posted);
            //LocalDate end = LocalDate.parse("15/07/23");
            //long difference = ChronoUnit.DAYS.between(start,end);
            
        
   %>
<div class="card text-center" style="margin-top: 170px;">
  <div class="card-header">
    Company Name : <%=companyName%>
  </div>
  <div class="card-body">
    <h5 class="card-title"><%=jobName%></h5>
    <p class="card-text">Description: <%=jobDescription%></p>
    <p class="card-text">Requirements: <%=jobRequirements%></p>
    <p class="card-text">Location: <%=jobLocation%></p>
    <p class="card-text">Job Type: <%=jobType%></p>
    <p class="card-text">Job Email: <%=jobEmail%></p>
    <p class="card-text">Job Link: <a href="<%=jobLink%>">Apply here</a></p>
    <p class="card-text">Job Faculty: <%=jobFaculty%></p>
    <p class="card-text">Job Qualification Name: <%=jobQualificationName%></p>
    <p class="card-text">Job Qualification Type: <%=jobQualificationType%></p>
    <p class="card-text">Stipend: <%=jobStipend%></p>
    <p class="card-text">Available Space: <%=NumberOfCandicates%></p>
  </div>
  <div class="card-footer text-muted">
    posted : <%=postedDate%>
  </div>
</div>
<%
        }
%>
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
    </body>
</html>
