<%@page import="za.ac.tut.entities.Student"%>
<%@page import="za.ac.tut.entities.Alumni"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>GRAD-ICEP-Alumni</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%
          Student student = (Student)session.getAttribute("student");
          String email = student.getEmail();
          String password = student.getPassword();
    %>

<div class="container mt-3">
  <h2>Alert</h2>
  <p>Student Password</p>
  <div class="alert alert-danger">
      <strong>Success!</strong> This alert indicate Success of password  retrieval of the student account <%=email%> <b>Password :</b><%=password%>.
  </div>
</div>
<div class="d-grid gap-3">
    <button type="button" class="btn btn-primary btn-block"><a href="admin-home-page.jsp" style="color: whitesmoke" >return to home Page</a></button>
</div>

</body>
</html>
