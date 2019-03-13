<%@page import="com.cts.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


 <style type="text/css">
 


input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #e7e7e7;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #A6A4A1;
  color:black;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

a.button {
    background-color: #e7e7e7; color: black;
    font-size: 12px;
    border-radius: 12px;
    appearance: button;
    background-color: #e7e7e7; color: black;
    padding: 10px 24px;
    box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
    float: Right; 
      
}
</style>

<title>Insert title here</title>
</head>
<body>

<center><h3> Add Product </h3></center>

<div>
  <form action="saveProduct" method="post" modelAttribute="product">
 <input id=productId type="hidden" value="${product.product_id}" name="id" required>
    
    <label for="pname">Product Name </label>
	<input type="text" name="name"  value="${product.name}" placeholder="Product Name" required="required" />
	
	<label for="brand">Brand </label>
  	<input type="text" name="brand" value="${product.brand}" placeholder="Product Brand" required="required" />

    <label for="category">Category </label>
    <input type="text" name="category" value="${product.category}" placeholder="Category" required="required" />

    <label for="description">Description </label>
    <input type="text" name="description" value="${product.description}" placeholder="Description" required="required" />
    
    <label for="price">Price </label>
    <input type="text" name="price"  value="${product.price}" placeholder="Price" required="required" />
    
    <label for="rating">Rating </label>
    <input type="text" name="rating" value="${product.rating}" placeholder="Rating" required="required" />
  
    
    <input type="submit" value="Submit" class="button" >
  </form>
</div>

</body>
</html>