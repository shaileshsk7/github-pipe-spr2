<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

 
<jsp:setProperty name="item" property="*" />

<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

<script type="text/javascript">

</script>

</head>
<body>

  
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/index">Bikes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/index">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item  active">
        <a class="nav-link" href="/bikes/pro">Bikes List</a>
      </li>
      
      <li class="nav-item  ">
        <a class="nav-link" href="/bikes/addpro">Add Bikes</a>
      </li>
      
      <li class="nav-item  ">
        <a class="nav-link" href="/bikes/del">Delete Bikes</a>
      </li>
      
       <li class="nav-item  ">
        <a class="nav-link" href="/cart/data">Bikes cart</a>
      </li>
      
    </ul>
  </div>
</nav> 
<!-- nav end  --> 

<!-- tables start  --> 


<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
    
       <th scope="col">Price</th>
      <th scope="col">Add To Cart</th>
    </tr>
  </thead>
  
   <h1 class="jumbotron  " >Bikes List</h1>
 
  <tbody>
  <c:forEach var="product" items="${Bikes}">
  
  	 private Integer bid;
	private String bname;
	 private String bdesc;
	 private Integer  bprice;
  
  <td >${Bikes.bid}</td>
      <td >${Bikes.bname}</td>
      <td >${Bikes.bdesc}</td>
      <td >${Bikes.bprice}</td>
   
      
    <td><form action="<%= request.getContextPath() %>/cart/add" method="post" >
      <input type="hidden" name="pid" value="${Bikes.bid}">
     <input type="hidden" name="pname" value="${Bikes.bname}">
     <input type="hidden" name="pprice" value="${Bikes.bprice}">
     
   
     <input type="number" class="col-form-label-sm " name="quantity" placeholder="Enter Quantity">
     
<input class="btn btn-primary " type="submit" value="addtocart">
  <!-- <input type="submit" value="addtocart" /> --> 
     </form></td>
    <tr>
     
    
    
    </tr>
  
  </tbody>
      </c:forEach>
</table>

  <!--  
  
   <h1 style="background-color: #e54826; color: #fff; text-align: center;">Product List</h1>
 
   <table style="border-collapse: collapse; width: 100%; text-align: center;" border="1">
    
    
  <thead>
    <tr style="background-color: #e54826; color: #fff; text-align: center;">
<th style="width: 20%;">ID</th>
<th style="width: 20%;">NAME</th>
<th style="width: 20%;">Desc</th>
<th style="width: 10%;">Quantity</th>
<th style="width: 20%;">Price</th>

<th style="width: 20%;">Add To Cart</th>
</tr>
</thead>


    
    <tbody>

    <c:forEach var="product" items="${product}">
     <tr style="color: #e54826;text-align: center;">
      <td style="width: 20%;">${product.pid}</td>
      <td style="width: 20%;">${product.pname}</td>
      <td style="width: 20%;">${product.pdesc}</td>
      <td style="width: 20%;">${product.qpro}</td>
      <td style="width: 20%;">${product.pprice}</td>
    
         <td style="width: 20%;">
    
 <form action="<%= request.getContextPath() %>/cart/add" method="post" >
      <input type="hidden" name="pid" value="${product.pid}">
     <input type="hidden" name="pname" value="${product.pname}">
     <input type="hidden" name="pprice" value="${product.pprice}">
     
   
     <input type="number" name="quantity" placeholder="quantity">
     
   <input type="submit" value="addtocart" />
     </form>
    </td>
    
    

     </tr>
    </c:forEach>
    </tbody>
   </table>

-->

 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>