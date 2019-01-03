<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="${js}/jquery.js"></script>
    <script type="text/javascript" src="${js}/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${js}/bootstrap.bundle.min.js"></script>
    <%-- <script type="text/javascript" src="${js}/myapp.js"></script> --%>
    <title>Online Shopping ${title}</title>
   
     <script > 
     
     $(function(){
    	 
    	 
    	 window.menu = '${title}';
    		
 		switch (menu) {

 		case 'About Us':
 			console.log('about');
 			$('#about').addClass('active');
 			break;
 		case 'Contact Us':
 			console.log('contact');
 			$('#contact').addClass('active');
 			break;
 			
 		case 'listProducts':
 			console.log('listProducts');
 			$('#listProducts').addClass('active');
 			break;
 		
 		default:
 			if(menu == "Home") break;
 			$('#listProducts').addClass('active');
			$('#a_' + menu).addClass('active');
 		break;
 		}
    	 
    	 
    	 
     });
		
	
	</script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!--Bootstrap Readable Theme  -->
     <link href="${css}/bootstrap-readable-themes.css" rel="stylesheet">
    

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
     <div class="wrapper">

    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp" %>
    
    <!-- Page Content -->
    <div class="content">
    
   <c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks contact -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>	
			
			
   <!-- /.container -->
	</div>
    <!-- Footer -->
     <%@include file="./shared/footer.jsp" %>
		</div>

  </body>

</html>
