<!DOCTYPE html> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/view/common/header.jsp"/>

<head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
      
      <style type="text/css">
			.wrap {   position: relative;  width: 100%;  margin: 0 auto 0 auto;  text-align: center;}
			.wrap2 {   margin-top: 30px;  margin-right: 151px; text-align: right;  margin-bottom: 30px;}
			.img {   width: 960px;  aspect-ratio: auto 960 / 2240; height: 2240px;}			
      </style>
 </head>
<div class="wrap">	
	<c:forEach var="list" items="${evBannerById }" varStatus="status">
		<div class="wrap2">
	    	<a href="#" onclick="insertData('${list.e_id}' , '${list.e_title}', '${list.e_content}', '${list.thumnail_img}', '${list.detail_banner}' );" class="primary-btn pd-cart text-center">삽입테스트</a>	    	
	    </div>	    
		<img class="img" src="${list.detail_banner}">
	</c:forEach>
</div>
<script>
function insertData(e_id, e_title, e_content, thumnail_img, detail_banner) {
	location.href="/event/insertData.do?e_id="+e_id+
						"&e_title="+e_title + 
						"&e_content="+e_content +
						"&thumnail_img="+thumnail_img +
						"&detail_banner="+detail_banner;
} 
</script>
 <jsp:include page="/WEB-INF/view/common/footer.jsp"/>