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
<h2 class="text-center">상세페이지</h2>
	
<table class="table table-dark table-striped">
            <thead>
                <tr>
                	<th>번호</th>
                    <th>성함</th>
                    <th>전화번호</th>
                    <th>부서</th>
                    <th>직급</th>
                    <th>이메일</th>
                    <th>회사명</th>
                    <th>회사주소</th>
                    <th>팩스</th>
                    <th>전화번호</th>
					<th>저장일자</th>
                </tr>
            </thead>
            <tbody>
                <tr>
						<td>${cbean.cnum }</td>
						<td>${cbean.cname }</td>
						<td>${cbean.phone }</td>
						<td>${cbean.dep }</td>
						<td>${cbean.pos }</td>
						<td>${cbean.email }</td>
						<td>${cbean.cb.comname }</td>
						<td>${cbean.cb.address }</td>
						<td>${cbean.cb.fax }</td>
						<td>
						<c:forEach var="vcp" items="${cbean.cb.vcp}">
							${vcp.comphone}
						</c:forEach>
						</td>
						<td>${cbean.create_at }</td>
				<tr>
            </tbody>
        </table>
	            <a href="Card.do" class="btn btn-success">돌아가기</a>
    	    </div>
		</div>
    
</body>
</html>