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

<c:if test="${msg == 2 }">
	<script type="text/javascript">
		<!-- alert('로그인 실패했습니다. 다시 해주세요');-->
	    jQuery(document).ready(function() {
            $('#myModal').show();
    });
    //팝업 Close 기능
    function close_pop(flag) {
         $('#myModal').hide();
    };
    

	</script>
</c:if>

<c:if test="${msg == 3 }">
	<script type="text/javascript">
	    jQuery(document).ready(function() {
            $('#AAAA').show();
    });
    //팝업 Close 기능
    function close_pop(flag) {
         $('#AAAA').hide();
    };
    

	</script>
</c:if>

<div class="row">
        <div class="col-lg-5 m-auto">
            <div class="card mt-5">
                <div class="card-title text-center mt-3">
                     <img src="img/login.png" width="150px" height="130px">
                </div>
                <div class="card-body">
                    <form action="User.do" method="post">

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
                            <input type="password" class="form-control py-4"  name="password" placeholder="User Password" required>
                        </div>
                        <input type="hidden" name="a" value="login">
                        <input type="submit" class="btn btn-success" value="로그인">
                        <a href="signup.jsp" class="btn btn-success">회원 가입</a>                        
                    </form>
                </div>
            </div>
        </div>
    </div>
    
   <!--   ------>
   		<div id="myModal" class="modal">
		 
	      <!-- Modal content -->
	      <div class="modal-content">
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">오류</span></b></span></p>
	                <p style="text-align: center; line-height: 1.5;"><br />로그인에 실패했습니다. 다시 로그인해주세요.</p>
	                <p><br /></p>
	            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
	                <span class="pop_bt" style="font-size: 13pt;" >
	                     <i class="fa fa-close fa-2x"></i>
	                </span>
	            </div>
	      </div>
	 
	    </div>
	    
	    <div id="AAAA" class="modal">
		 
	      <!-- Modal content -->
	      <div class="modal-content">
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">성공</span></b></span></p>
	                <p style="text-align: center; line-height: 1.5;"><br />회원가입이 완료되었습니다.</p>
	                <p><br /></p>
	            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
	                <span class="pop_bt" style="font-size: 13pt;" >
	                     <i class="fa fa-close fa-2x"></i>
	                </span>
	            </div>
	      </div>
	 
	    </div>
</body>
</html>
