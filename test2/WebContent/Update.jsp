<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <link rel="stylesheet" href="css/fonts.css">
    <script src="https://code.jquery.com/jquery-latest.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="card p-5 mt-5">
<h1>${id}</h1>
<h2 class="text-center">수정하기</h2>
	<div class="row">
	
	
     	<div class="col-sm-6 bg-info">
     	<h3 class="text-center">개인정보</h3> 
	        <form action="Card.do" method="post">
	            <div class="form-group">
	                <label for="name">성함</label>
	                <input type="text" class="form-control" id="cname" value="${cbean.cname }" name="name" required>
	            </div>
	
	            <div class="form-group">
	                <label for="phone">전화번호</label>
	                <input type="text" class=" form-control" id="phone" value="${cbean.phone }" name="phone" required>
	            </div>
	
	            <div class="form-group">
	                <label for="dep">부서</label>
	                <input type="text" class=" form-control" id="dep" value="${cbean.dep }" name="dep" required>
	            </div>
	            
	            <div class="form-group">
	                <label for="pos">직급</label>
	                <input type="text" class=" form-control" id="pos" value="${cbean.pos }" name="pos" required>
	            </div>
	            <div class="form-group">
	                <label for="email">이메일</label>
	                <input type="email" class=" form-control" id="email" value="${cbean.email }" name="email" required>
	            </div>
	        
	            <div class="form-group">
	                <label for="comname">회사명</label>
	                <input type="text" class="form-control" id="comname" value="${cbean.cb.comname }" name="comname" required>
	            </div>
	
	            <div class="form-group">
	                <label for="address">회사주소</label>
	                <input type="text" class=" form-control" id="address" value="${cbean.cb.address }" name="address" required>
	            </div>
	
	            <div class="form-group">
	                <label for="fax">팩스</label>
	                <input type="text" class=" form-control" id="fax" value="${cbean.cb.fax }" name="fax" required>
	            </div>
	            <div class="form-group">
	                <label for="comphone">전화번호</label>
	                <c:forEach var="vcp" items="${cbean.cb.vcp}">
							<input type="text" class=" form-control" id="comphone" value="${vcp.comphone}" name="comphone" required>
					</c:forEach>
				                
	            </div>
	            <a href="Card.do" class="btn btn-success">돌아가기</a>
	            <input type="hidden" name="cnum" value="${cbean.cnum}"/>
	            <h1>${cbean.cnum}</h1>
	            <input type="hidden" name="a" value="Update"/>
	            <input type="hidden" name='b' value="Execute"/>
	        	<button type="submit" class="btn btn primary">수정하기</button>
	        </form>
    	    </div>
		</div>
    </div>
    </div>
</body>
</html>