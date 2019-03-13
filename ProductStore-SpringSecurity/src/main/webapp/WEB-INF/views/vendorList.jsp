<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
<title>Vendor List</title>
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
    <img class="manImg" src="/grizzly-store-vendor-web/WebContent/images/user1.png" style="max-height: 150px; max-width: 150px;" ></img>
    </span>
    <ul class="nav nav-pills nav-stacked">
        <li><a>User :</a></li>
        <p style="padding-left: 35px;">${pageContext.request.userPrincipal.name }<p>
     
        <li><a>Designation :</a></li>
        <p style="padding-left: 35px;">User<p>
        <li><a>Office :</a></li>
        <p style="padding-left: 35px;">CTS<p>
      </ul>
      <br>
    
    </div>
</div>

<div class="col-sm-9" class="container-fluid">
    
<nav class="navbar navbar-default"  style="background-color:#EFEDEA;">
  <div class="container-fluid">
   <div class="navbar-header">
      <a class="navbar-brand" href="/demo/product/list" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Product</a>
    </div>
    
     <div class="navbar-header">
      <a class="navbar-brand" href="/demo/vendor/list" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Vendor</a>
    </div>
    
  </div>
</nav>
<br>
       <a href="showForm" class="btn " role="button">Add Vendor </a>
      <br>
<h4><small>Vendor Table</small></h4>
       <div class="container-fluid ">
        <table class="table ">
		<thead>
		<tr>
			<th><c:out value="${'Name' }"></c:out></th>
			<th><c:out value="${'Location' }"></c:out></th>
			<th><c:out value="${'Contact' }"></c:out></th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="tempvendor" items="${vendor}">
    
      <c:url var="viewLink" value="/vendor/view">
    <c:param name="vendorId" value="${tempvendor.id}"/>
    </c:url>
    
    <!--  
    <c:url var="updateLink" value="/vendor/updateForm">
    <c:param name="vendorId" value="${tempvendor.id}"/>
    </c:url>
    -->
    
     <c:url var="deleteLink" value="/vendor/delete">
    <c:param name="vendorId" value="${tempvendor.id}"/>
    </c:url>
    
    
    <tr>

      
      <td>${tempvendor.name}</td>
     <td>${tempvendor.location}</td>
     <td>${tempvendor.contact}</td>
    	
    	</br></br>
      <td><a href="${viewLink }">View</a></td>
       
       <td><a href="${deleteLink}" onclick="id(!(confirm('Are you sure you want to delete this Vendor?'))return false)">Delete</a> 
      
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