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

<div class="container mt-3">
  <h3>Register As Alumni</h3>
  <br />
  <hr />
  <form action="RegisterAlumniSessionServlet.do" method="POST" class="was-validated">
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Name :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Name" name="uname" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Surname :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Surname" name="surname" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Student Number:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Student Number" name="studNumber" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Education Level :</label>
      <input type="text" class="form-control" id="uname" placeholder="e.g..Diploma,Bachelors degree.." name="EduLevel" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Qualification Name :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter qualification Name" name="QualificationName" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Email:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Email" name="email" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3">
      <label for="pwd" class="form-label">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
  <button type="submit" class="btn btn-primary">Register</button>
  </form>
</div>

</body>
</html>
