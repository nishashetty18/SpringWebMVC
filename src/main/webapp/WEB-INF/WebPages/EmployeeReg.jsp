<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
     <%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body style="background-color:#DCC7AA">
<div class="container-fluid">
<a class="btn btn-primary" href="empall">View All Employee List</a>
<br />
<br />
<frm:form method="post"  action="empreg"  modelAttribute="emp">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

<div  class="card">
<div  class="card-header" style="background-color:#00303F;color:white;" >
<h3 style="text-align:center;">Add Employee</h3>
</div>
<div  class="card-body" style="background-color:#7A9D96">
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
		<label>Employee Number</label>
		<br />
		<frm:input type="text"  path="empNo" class="form-control"/>
		<br />
</div>
<div class="col-md-1"></div>
</div>
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
	<label>Employee Name </label>
	<br />
	<frm:input type="text"  path="empName" class="form-control" />
	<br />
</div>
<div class="col-md-1"></div>
</div>
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
	<label>Job </label>
	<br />
	<frm:input type="text"  path="job" class="form-control"/>
	<br />
</div>
<div class="col-md-1"></div>
</div>
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
<label>Salary</label>
<br />
<frm:input type="text"  path="salary" class="form-control"/>
<br />
</div>
<div class="col-md-1"></div>
</div>
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10" style="text-align:center;">
<button  class="btn btn-primary">Add</button>
</div>
</div>
<div class="col-md-1"></div>
</div>
</div>
<div class="col-md-4"></div>
</div>
</div>
</frm:form>

<br />
<div class="row" >
<div class="col-md-1"></div>
<div class="col-md-10" style="border:1">
<table class="table table-striped" class="table-danger">
<tr>
<thead style="--bs-table-bg:#DCC7AA">
	<td>${empinfo.empNo }</td>
	<td>${empinfo.empName }</td>
	<td>${empinfo.job }</td>
	<td>${empinfo.salary }</td>
</thead>
</tr>
</table>
</div>
<div class="col-md-1"></div>
</div>
</div>
</body>
</html>