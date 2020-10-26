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
<h2 class="text-center">명함등록하기</h2>
	<div class="row">
	
	
     	<div class="col-sm-6 bg-info">
     	<h3 class="text-center">개인정보</h3> 
	        <form action="Card.do" method="post">
	            <div class="form-group">
	                <label for="name">성함</label>
	                <input type="text" class="form-control" id="cname" placeholder="성함을입력하세요" name="name" required>
	            </div>
	
	            <div class="form-group">
	                <label for="phone">전화번호</label>
	                <input type="text" class=" form-control" id="phone" placeholder="전화번호를 입력하세요" name="phone" required>
	            </div>
	
	            <div class="form-group">
	                <label for="dep">부서</label>
	                <input type="text" class=" form-control" id="dep" placeholder="부서를 입력하세요" name="dep" required>
	            </div>
	            
	            <div class="form-group">
	                <label for="pos">직급</label>
	                <input type="text" class=" form-control" id="pos" placeholder="직급을 입력하세요" name="pos" required>
	            </div>
	            <div class="form-group">
	                <label for="email">이메일</label>
	                <input type="email" class=" form-control" id="email" placeholder="이메일을 입력하세요" name="email" required>
	            </div>
	        
	            <div class="form-group">
	                <label for="comname">회사명</label>
	                <input type="text" class="form-control" id="comname" placeholder="회사명을 입력하세요" name="comname" required>
	            </div>
	
	            <div class="form-group">
	                <label for="address">회사주소</label>
	                <input type="text" class=" form-control" id="address" placeholder="주소를 입력하세요" name="address" required>
	            </div>
	
	            <div class="form-group">
	                <label for="fax">팩스</label>
	                <input type="text" class=" form-control" id="fax" placeholder="팩스를 입력하세요" name="fax" required>
	            </div>
	            <div class="form-group">
	                <label for="comphone">전화번호</label>
	                <input type="text" class=" form-control" id="comphone" placeholder="전화번호를 입력하세요" name="comphone" required>
	            </div>
	            <a href="Card.do" class="btn btn-success">돌아가기</a>
	            <h1>${param.num }</h1>
	            <input type="hidden" name="user_unum" value="${param.num}"/>
	            <input type="hidden" name="a" value="Add"/>
	        	<button type="submit" class="btn btn primary">Submit</button>
	        </form>
    	    </div>
		</div>
    </div>
    </div>
</body>
</html>