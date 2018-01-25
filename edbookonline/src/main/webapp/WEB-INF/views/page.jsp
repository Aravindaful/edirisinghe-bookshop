<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
    <spring:url var="css" value="/resources/css" />
    <spring:url var="js" value="/resources/js" />
    <spring:url var="images" value="/resources/images" />
    
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Online Bookstore - ${title}</title>
    
    <script>
    window.menu='${title}';
    </script>
    
    
    
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <link href="${css}/font-awesome.min.css" rel="stylesheet">
    <link href="${css}/prettyPhoto.css" rel="stylesheet">
    <link href="${css}/price-range.css" rel="stylesheet">
    <link href="${css}/animate.css" rel="stylesheet">
	<link href="${css}/main.css" rel="stylesheet">
	<link href="${css}/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<!--header-->
	<%@include file="./shared/header.jsp" %>
	
	
	<!--home-->
	<c:if test="${userClickHome==true}">
	 <%@include file="home.jsp" %>
	</c:if>
	
	<c:if test="${userClickProfile==true}">
	 
	</c:if>
	
	<c:if test="${userClickCart==true}">
	<%@include file="cart.jsp" %>
	</c:if>
	
	<c:if test="${userClickLoginReg==true}">
	<%@include file="loginReg.jsp" %>
	</c:if>
	
	<c:if test="${userClickContact==true}">
	<%@include file="contact.jsp" %>
	</c:if>
	
	<c:if test="${userClickAbout==true}">
	
	</c:if>
	
	<c:if test="${userClickProducts==true}">
	<%@include file="products.jsp" %>
	</c:if>
	
	<c:if test="${userClickProductDetails==true}">
	<%@include file="productDetails.jsp" %>
	</c:if>
	
	<!--Footer-->
	 <%@include file="./shared/footer.jsp" %>

  
    <script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/jquery.scrollUp.min.js"></script>
	<script src="${js}/price-range.js"></script>
    <script src="${js}/jquery.prettyPhoto.js"></script>
    <script src="${js}/main.js"></script>
    <script src="${js}/myapp.js"></script>
</body>
</html>