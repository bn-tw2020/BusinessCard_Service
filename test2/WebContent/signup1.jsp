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
<title>Insert title here</title>
</head>
<body>

<c:if test="${msg == 1 }">
	<script type="text/javascript">
		alert('비밀번호가 다릅니다');
	</script>
</c:if>
<c:if test="${msg == 2 }">
	<script type="text/javascript">
		alert('사용 중인 아이디입니다.');
	</script>
</c:if>
<div class="row">
        <div class="col-lg-5 m-auto">
            <div class="card mt-5">
                <div class="card-title text-center mt-3">
                    <!-- <img src="img/bg.jpg" width="150px" height="150px"> -->
                    <div class="display-4">회원가입</div>
                </div>
                <div class="card-body">
                    <form action="User.do" method="post">
                        <div class="input-group mb-3">
                            <div class="inpuut-group-prepend">
                                <span class="input-group-text" style="margin-top:2px; margin-right:8px;">
                                    <i class="fa fa-user fa-2x"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control py-4"  name="name" placeholder="User Name" required>
                        </div>

						<div class="input-group mb-3">
                            <div class="inpuut-group-prepend">
                                <span class="input-group-text" style="margin-top:2px; margin-right:8px;">
                                    <i class="fa fa-user fa-2x"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control py-4" name="id" placeholder="User ID" required>
                        </div>
						

                        <div class="input-group mb-3">
                            <div class="inpuut-group-prepend">
                                <span class="input-group-text" style="margin-top:2px; margin-right:8px;">
                                    <i class="fa fa-lock fa-2x"></i>
                                </span>
                            </div>
                            <input type="password" class="form-control py-4"  name="password1" placeholder="User Password" required>
                        </div>
                        
                        <div class="input-group mb-3">
                            <div class="inpuut-group-prepend">
                                <span class="input-group-text" style="margin-top:2px; margin-right:8px;">
                                    <i class="fa fa-lock fa-2x"></i>
                                </span>
                            </div>
                            <input type="password" class="form-control py-4"  name="password2" placeholder="User Password" required>
                        </div>
                        
                        <input type="hidden" name="a" value="signup">
                        <a href="login.jsp" class="btn btn-success">로그인</a>
                        <input type="submit" class="btn btn-success" value="회원 가입">                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>