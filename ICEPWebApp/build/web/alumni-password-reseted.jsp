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
          Alumni alumni = (Alumni)session.getAttribute("alumni");
          String email = alumni.getEmail();
          String password = alumni.getPassword();
    %>

<div class="container mt-3">
  <h2>Alert</h2>
  <p>Alumni Password</p>
  <div class="alert alert-success">
      <strong>Success!</strong> This alert indicate Success of password  retrieval of the alumni account <%=email%> <b>Password :</b><%=password%>.
  </div>
</div>
<div class="d-grid gap-3">
    <button type="button" class="btn btn-primary btn-block"><a href="admin-home-page.jsp" style="color: whitesmoke" >return to home Page</a></button>
</div>

</body>
</html>