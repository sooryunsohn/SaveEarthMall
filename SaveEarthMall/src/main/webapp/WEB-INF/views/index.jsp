<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- 메인페이지 시작 -->
	
	<!-- 검색창 -->
	<div id="search">	
		<form method="post" action="search.jsp">
			<div id="search_categories">
				All Categories  
			</div>	 
		        <input type="text" placeholder="상품명을 검색해주세요.">
		        <button type="submit" class="site-btn">검색</button>
	    </form>
    </div>
    
    <!-- 메인화면 이미지 삽입 -->
    <div class="clear"></div>  
	<div id="main_img">
	    <img src="img/main.JPG" >  
  	</div>
     
	  <!-- 신상품 2개 이미지 삽입 -->
	  <div id="front">   
	    <h2> New Item</h2>     
	    <div id="newProduct">   
	      <c:forEach items="${newProductList}"  var="productVO">
	        <div id="item">
	          <a href="product_detail?pseq=${productVO.pseq}">
	            <img src="product_images/${productVO.image}" />
	            <h3> ${productVO.name} </h3>    
	            <p><fmt:formatNumber type="currency" value="${productVO.price2}"/></p>
	          </a>    
	        </div>
	      </c:forEach>      
	    </div>
	   <div class="clear"></div>   
      
	    <!--  베스트상품 4개 이미지 삽입 -->
	    <h2> Best Item</h2>     
	      <div id="bestProduct">         
	        <c:forEach items="${bestProductList}"  var="productVO">
	          <div id="item">
	           <a href="product_detail?pseq=${productVO.pseq}">
	             <img src="product_images/${productVO.image}" />
	           <h3> ${productVO.name} </h3>    
	           <p><fmt:formatNumber type="currency" value="${productVO.price2}"/></p>
	        </a>  
	      </div>
	    </c:forEach>      
	  </div>
	  <div class="clear"></div>
	  </div>        
</body>
</html>

<%@ include file="footer.jsp" %>    