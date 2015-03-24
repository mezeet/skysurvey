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
						<span class="pull-right"><a href="#">비밀번호 찾기</a></span>
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
				<div class="col-sm-12">
					<button class="btn" data-dismiss="modal" aria-hidden="true">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!--	모달-로그인 끝 -->
