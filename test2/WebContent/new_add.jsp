<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/new_add.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, 
  maximum-scale=1.0, minimum-scale=1.0">
<title>명함 생성 페이지 </title>
</head>
<body>
	<div class='container'>	

		<header>
			<div class='banner_wrap'>
			<!-- 리스트로 이동 -->
				<a href='#'>
					<span class='back_button'><</span>
				</a>
				<span class='title'>명함 생성</span>
			</div>
		</header>
		
		<main>
		<!-- 명함 생성 폼 -->
		<form action='#'>
			<div class='main_wrap'>
			
				<div class="content_wrap">
					<div class='sub_title'>이름</div>
					<div class='content_input'>
						<input name='user_name' type="text" placeholder="이름 입력"/>
					</div>
				</div>	
				
				<div class="content_wrap">
					<div class='sub_title'>직책</div>
					<div class='content_input'>
						<input name='user_position' type="text" placeholder="직책 입력"/>
					</div>
				</div>
				
				<div class="content_wrap">
					<div class='sub_title'>부서</div>
					<div class='content_input'>
						<input name='user_team' type="text" placeholder="부서명 입력"/>
					</div>
				</div>	
				
				<div class="content_wrap">
					<div class='sub_title'>회사</div>
					<div class='content_input'>
						<input name='user_company' type="text" placeholder="회사명 입력"/>
					</div>
				</div>		
				
				<div class="content_wrap">
					<div class='sub_title'>이메일</div>
					<div class='content_input'>
						<input name='user_email' type="email" placeholder="이메일 입력"/>
					</div>
				</div>
				
				<div class="content_wrap">
					<div class='sub_title'>주소</div>
					<div class='content_input'>
						<input name='user_address' type="text" placeholder="주소 입력"/>
					</div>
				</div>
				
				<div class="content_wrap">
					<div class='sub_title'>FAX</div>
					<div class='content_input'>
						<input name='user_FAX' type="text" placeholder="FAX 번호 입력"/>
					</div>
				</div>
				
				<div class="content_wrap_phone">
					<div class='sub_title'>휴대폰</div>
					<div class='content_input'>
						<input name='user_phone' type="text" placeholder="휴대폰 번호 입력"/>
							<div class='plus_phone'>
								<button class="addNum" type="button">+</button>
							</div>
							
					</div>
				</div>
				
				<div class="content_wrap">
					<div class='button_submit'>
						<button >명함 생성하기</button>
					</div>
				</div>
				
			</div>
			
		</form>
		</main>
		

	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript">
	
    $(document).ready(function () {
        $('.addNum').click(function () {
            $('.content_wrap_phone').append(
            		'<div class="sub_title">추가 휴대폰</div>\
            		<div class="content_input">\
            		<input name="user_phone" type="text" placeholder="휴대폰 번호 입력"/>\
            		</div>')
        });
    });
	</script>
</body>
</html>