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
  <h3>Get Alumni Password</h3>
  <br />
  <hr />
    
  <form action="AlumniPasswordSessionServlet.do"  method="POST" class="was-validated">
    <div class="mb-3">
      <label for="pwd" class="form-label">Student Number:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter Student Number" name="studAlumni" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
  <button type="submit" class="btn btn-primary">Get Alumni Password</button>
  </form>
</div>

</body>
</html>
