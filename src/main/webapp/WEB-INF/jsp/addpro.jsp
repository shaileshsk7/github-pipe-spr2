<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert Details</title>
<style>
.main {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}
</style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bikes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/index">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item  ">
        <a class="nav-link" href="/bikes/pro">Bikes List</a>
      </li>
      
      <li class="nav-item active ">
        <a class="nav-link" href="/bikes/addpro">Add Bikes</a>
      </li>
      
    </ul>
  </div>
</nav>


	<div >
		<h1 class="jumbotron">Insert Data</h1>
		<form action="<%= request.getContextPath() %>/bikes/added" method="post">
			<table class="main">
				
			<tr>
					<td><input class="input-group input-group-sm mb-3" type="text" name="bid" placeholder="bike id"></td>
				</tr>
			
		<tr>
					<td><input class="input-group input-group-sm mb-3" type="text" name="bname" placeholder="bike Name"></td>
				</tr>
		
				<tr>
					<td><input class="input-group input-group-sm mb-3" type="text" name="bdesc" placeholder="bike Description"></td>
				</tr>
				
				
					<tr>
					<td><input class="input-group input-group-sm mb-3"  type="number" name="bprice" placeholder="bike Price"></td>
				</tr>
				
				
					
				<tr></tr>
				<tr>
					<td><input class="btn btn-primary" type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
		
		
   

</body>
</html>