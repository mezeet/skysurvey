<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!-- 모달- 로그인 시작-->
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				 <h2 class="text-center">
						스카이 서베이
				 </h2>
			</div>
			<div class="modal-body">
				<form class="form col-sm-12 center-block">
				<div class="alert alert-warning"><strong>주의!</strong>아이디나 암호가 맞지 않습니다.</div>
					<div class="form-group">
						<input type="text" class="form-control input-lg"
							placeholder="이메일">
					</div>
					<div class="form-group">
						<input type="password" class="form-control input-lg"
							placeholder="암호">
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-lg btn-block">로그인</button>
						<span class="pull-right">
							<a href="#getPasswordModal" role="button" data-toggle="modal" data-dismiss="modal">비밀번호 찾기</a>
							<!-- data-toggle 과 data-dismiss 를 동시에 넣으면 현재 모달이 닫히고 새 모달이 열린다. -->
						</span>

						<span>
							<div class="checkbox">
  							<label>
    							<input type="checkbox" value="">
     							입력한 정보 기억하기
  							</label>
							</div>
						</span>
					</div>
				</form>
			</div>
			<div class="modal-footer">
<!-- 				<div class="col-sm-12"> -->
<!-- 					<button class="btn" data-dismiss="modal" aria-hidden="true">취소</button> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
</div>
<!--	모달-로그인 끝 -->

<!-- 모달- 비번찾기 시작-->
<div id="getPasswordModal" class="modal fade" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				 <h2 class="text-center">
						비밀번호 찾기
				 </h2>
				 
			</div>
			<div class="modal-body">
				<form class="form col-sm-12 center-block">
				<div class="alert alert-success"><strong>성공</strong> 암호 재설정 메일을 보냈습니다.</div>
					<div class="form-group">
						<p>회원님의 계정과 연결된 이메일 주소를 입력해 주십시오.</p>
							<input type="text" class="form-control input-lg"
								placeholder="이메일">
						</div>
					<div class="row">
						<div class="col-sm-12">
							<img src="${path}/assets/img/captcha.jpg" class="img-responsive" alt="Responsive image">
							<p>위 이미지에 보이는 숫자를 입력하여 주세요.</p>
						</div>
					</div>
					<div class="form-group">
						<input type="password" class="form-control input-lg"
							placeholder="인증번호">
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-lg btn-block">전송</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
<!-- 				<div class="col-sm-12"> -->
<!-- 					<button class="btn" data-dismiss="modal" aria-hidden="true">취소</button> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
</div>
<!--	모달-비번찾기 끝 -->
