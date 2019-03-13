<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Product Detail</title>
</head>


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
        <li><a>Username :</a></li>
        <p style="padding-left: 35px;">${pageContext.request.userPrincipal.name}<p>
     
        <li><a>Designation :</a></li>
        <p style="padding-left: 35px;">User<p>
        <li><a>Office :</a></li>
        <p style="padding-left: 35px;">CTS<p>
      </ul>
      <br>
    
    </div>
</div>
    <div class="col-sm-9">
    

         
 <div class="container-fluid" style="width:500px;">
   <h1><c:out value="${'Product Details'}"/></h1> 
 <section>
 </br>
 <nav>
      <h4 class="name"><span style="font-weight:bold;">
      ${product.name}</span>
      </br>
       </br>
       <span> <b>By :</b>${product.brand}</span></h4>
 </nav>      
  </section> 
  <section> 
  <h4 class="Price" ><span><b>Price :</b></span>
        <span >${product.price}</span></h4>
       
        
            
       <h4 class="description"><span><b>Description :</b></span> <span >${product.description}</span></h4>
             
       <h4 class="rating"><span><b>Rating :</b></span> <span >${product.rating}</span></h4>
           
</section>
</div>
      </div>
    </div>
  </div>
    
    
    
    
    
    
    
    
    

</body>
</html>