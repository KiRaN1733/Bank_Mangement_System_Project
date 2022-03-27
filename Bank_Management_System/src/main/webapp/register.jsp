<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="designcontentpart/cssPart.jsp" %>
</head>
<body style="background-color:#f7faf8;">
<%@include file="designcontentpart/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-2">
<div class="col-md-5 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Registration Page</h4>
<form>
 <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
   <div class="form-group">
    <label for="exampleInputEmail1">Address</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
     <div class="form-group">
    <label for="exampleInputEmail1">Contact Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Re-type Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
 <div class="text-center mt-2"> <button type="submit" class="btn btn-primary">Register</button></div>
 
</form>


</div>
</div>
</div>
</div>
</div>
<div style="margin-top:60px">
<%@include file="designcontentpart/footer.jsp" %>
</div>
</body>
</html>