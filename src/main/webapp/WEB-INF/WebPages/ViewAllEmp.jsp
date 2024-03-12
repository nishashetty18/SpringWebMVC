<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
<div class="container-fluid">
<a style="float-right" class="btn btn-primary" href="info">BACK</a>
<div class="row" style="margin-top:10%; margin-left-right:50%;">
<div class="col-md-1"></div>
<div class="col-md-10">
<h2 style="text-align:center;">Employee List</h2>
<table style="text-align:center;--bs-table-bg:rgb(222, 238,234);"width="100%" border="1" class="table table-striped" >
<tr>
<thead style="--bs-table-bg:rgb(132, 129, 131);">
<th>Employee No</th>
<th>Employee Name</th>
<th>Job</th>
<th>Salary</th>
</thead>
</tr>
<c:forEach  var="emp"  items="${empall }">
	<tr>
	<td>${emp.empNo }</td>
	<td>${emp.empName }</td>
	<td>${emp.job }</td>
	<td>${emp.salary }</td>
	</tr>
</c:forEach>
</table>
</div>
<div class="col-md-1"></div>
</div>

</div>
</body>
</html>