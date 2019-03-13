<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cts.entity.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    
    
    .table {
    column-gap: 25px;
    }
    
    .col-sm-12{
	width: auto;
	
	}
	
	.col-sm-9{
	margin-left:5px;
	width: auto;
	
	}
	.col-sm-3{
	margin-left: 10px;
	}
    
	a.btn{
	background-color: #A6A4A1; color: black;
	appearance: button;
	
	padding: 18px,24px;
	box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
	float: Right;
	}

   
    .sidenav {
      background-color: #f1f1f1;
      height: auto;
 
    
    }
 
.profile-data{     padding: 10px;}
.profile{
width:100%;
}
    
   
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;
      width:auto;
      } 
    }
  </style>
  <title>Product List</title>
</head>
<body>
  <jsp:include page="header.jsp" />
  
  <br>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <div style="background-color:#B7B7B5; text-align:center ;"> <h3 align="center" style="padding: 5px;" >Profile</h3></div>
   <div class="profile-data">
    <span class="border" style=" padding:10px;" >
    <img class="manImg" src="./images/user1.png" style="max-height: 150px; max-width: 150px;" ></img>
    </span>
    <ul class="nav nav-pills nav-stacked">
        <li><a>User :</a></li>
        <p style="padding-left: 35px;">${pageContext.request.userPrincipal.name}</p>
        <li><a>Designation :</a></li>
        <p style="padding-left: 35px;">User</p>
        <li><a>Office :</a></li>
        <p style="padding-left: 35px;">CTS</p>
      </ul>
      <br>
    
    </div>
</div>
<div class="col-sm-9">
    
<nav class="navbar navbar-default"  style="background-color:#EFEDEA;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Product</a>
    </div>
    <div class="navbar-header">
      <a class="navbar-brand" href="/demo/vendor/list" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Vendor</a>
    </div>
   
  </div>
</nav>
	<br>
       <a href="showForm" class="btn " role="button">Add Product </a>
      <br>
      <h4><small>Product Table</small></h4>
       <div class="container-fluid ">
        <table class="table ">
		<thead>
		<tr>
			<th><c:out value="${'Name' }"></c:out></th>
			<th><c:out value="${'Brand' }"></c:out></th>
			<th><c:out value="${'Cateogry' }"></c:out></th>
			<th><c:out value="${'Price' }"></c:out></th>
			<th><c:out value="${'Rating' }"></c:out></th>
			
			
		</tr>
		</thead>
		<tbody>
		<c:forEach var="tempproduct" items="${Products}">
    <c:url var="viewLink" value="/product/viewForm">
    <c:param name="productId" value="${tempproduct.product_id}" />
    </c:url>
    
    <c:url var="updateLink" value="/product/updateForm">
    <c:param name="productId" value="${tempproduct.product_id}" />
    </c:url>
    
    <c:url var="deleteLink" value="/product/delete">
    <c:param name="productId" value="${tempproduct.product_id}" />
    </c:url>
    
      <tr>
        
        <td>${tempproduct.name}</td>
        <td>${tempproduct.brand}</td>
        <td>${tempproduct.category}</td>
         
 
        <td>${tempproduct.price}</td>
        <td>${tempproduct.rating}</td>
        <!-- 
        <th><a href="edit?id=${tempbook.book_id}">Edit</a></th>
 		<th><a href="delete?id=${tempbook.book_id}">Delete</a></th>
 		 -->
 		 <th><a href="${viewLink}">View</a></th>
 		 <th><a href="${updateLink}">Update</a></th>
 		  <th><a href="${deleteLink}">Delete</a></th>
      </tr>
     </c:forEach>
		
		</tbody>
		</table>
		</div>
      </div>
    </div>
  </div>

 
</body>
</html>