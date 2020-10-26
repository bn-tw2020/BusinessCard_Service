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
				<form action="User.do" method="post">                
                   <input type="hidden" name="a" value="logout">
                   <input type="submit" class="btn btn-success" value="로그아웃">                     
				</form>
                    
    <div class="container">
        <h2>${username }</h2>
        <a href="add.jsp?num=${user_unum }" class="btn btn-sm btn-primary">명함등록</a><br/><br/>
        
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                	<th>순서</th>
                	<th>번호</th>
                    <th>성함</th>
                    <th>전화번호</th>
                    <th>회사명</th>
                    <th>저장일자</th>
                    <th>기타</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="bean" items="${v}" varStatus="status">
                <tr>
               			<td>${status.count }</td>
						<td>${bean.cnum }</td>
						<td><a href="Card.do?cnum=${bean.cnum}&a=Detail">${bean.cname }</a></td>
						<td>${bean.phone }</td>
						<td>${bean.cb.comname }</td>
						<td>${bean.create_at }</td>
						<td><a href="Card.do?cnum=${bean.cnum}&a=Delete" class="btn btn-sm btn-primary">삭제</a>
						<a href="Card.do?cnum=${bean.cnum}&a=Update" class="btn btn-sm btn-primary">수정</a></td>
						
				<tr>
				</c:forEach>
            </tbody>
        </table>

       </div>
       

</body>
</html>