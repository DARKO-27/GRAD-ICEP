<!DOCTYPE html>
<html lang="en">
<head>
    <title>GRAD-ICEP-Student</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h3>Company Adding a Job Form</h3>
  <br />
  <hr />
  <form action="CompanyAddJobSessionServlet.do" method="POST" class="was-validated">
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Name :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Job Name" name="jobName" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Company Name :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Company Name" name="companyName" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Type :</label>
      <input type="text" class="form-control" id="uname" placeholder="e.g...Intership..." name="jobType" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Location :</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Job Location" name="jobLocation" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Number Of Candicates Required</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Number" name="candicate" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
      <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Qualification Name:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Job Qualification" name="qualifName" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Qualification Type</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Qualification Type" name="qualifType" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3">
      <label for="pwd" class="form-label">Job Requirements:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter job requirement" name="req" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Link</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Job Link" name="jobLink" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
      <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Faculty</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Job Faculty" name="faculty" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3">
      <label for="pwd" class="form-label">Job Email:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter job Email" name="email" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">Job Description</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter job Description" name="description" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="mb-3 mt-3">
      <label for="uname" class="form-label">job Stipend</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Stipend" name="stipend" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
  <button type="submit" class="btn btn-primary">Add-Job</button>
  </form>
</div>

</body>
</html>
