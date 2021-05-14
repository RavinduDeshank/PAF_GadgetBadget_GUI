<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>Product Management - GadgetBadget</title>
	
		<link href="myStyle.css" rel="stylesheet" />
		<link rel="stylesheet" href="Views/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="Components/jquery-3.5.0.min.js"></script>
		<script src="Components/Product.js"></script>

	</head>
	
	<body>
		<div class="container">
	
			<p class="font-weight-bold">
				<center>
					<h1><u><i><b>- Product Management -</b></i></u></h1>
				</center>
			</p>
			<br><br>
			
			<fieldset>
	
				<legend><b>Add Product Details</b></legend>
					<form id="Product" name="Product" class="border border-light p-5">
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Product Code:</label>
						    <input type="hidden" id="productID" name="productID">	
						    <input type="text" id="productCode" class="form-control" name="productCode">
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Product Name:</label>
						    <input type="text" id="productName" class="form-control" name="productName">						    
						</div>
				
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Product Price:</label>
						    <input type="text" id="productPrice" class="form-control" name="productPrice">						    
						</div>
						 
						<div class="row mb-4">
						    <div class="col">
						      <div class="form-outline">
						        <label class="form-label" for="form6Example1" class="col-sm-2 col-form-label col-form-label-sm">Product Description:</label>
						        <input type="text" id="productDesc" class="form-control" name="productDesc">						        
						      </div>
						    </div>
						  </div>						
						<br> 
						
						<!-- <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary btn-lg btn-block"> 
						<input type="hidden" id="productID" name="productID" value="">-->
						
						<div id="alertSuccess" class="alert alert-success"></div>
						<div id="alertError" class="alert alert-danger"></div>
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary btn-lg btn-block">
						
					</form>
				
					
			</fieldset>
			
			<br> 
			
			<div class="container" id="ProductGrid">
				<fieldset>
					<legend><b>View Product Details</b></legend>
					<form method="post" action="products.jsp" class="table table-striped">
						<%
						    Product viewProduct = new Product();
							out.print(viewProduct.readProducts());
						%>
					</form>
					<br>
				</fieldset>
			</div>
		</div>
	</body>
</html>



