<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--    
		jstl 객체 변수설명 
			path = 현재 프로젝트 경로 명 
-->


<nav class="navbar navbar-fixed-top header">
	<div class="container">
		<div class="col-sm-12 container">
			<div class="navbar-header">
				<a href="${path}/index.jsp" class="navbar-brand">스카이 서베이</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse1">
					<i class="glyphicon glyphicon-search"></i>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="btn btn-suceess visible-xs">xs</a></li>
					<li><a class="btn btn-suceess visible-sm">sm</a></li>
					<li><a class="btn btn-suceess visible-md">md</a></li>
					<li><a class="btn btn-suceess visible-lg">lg</a></li>
				
				
					<li>
						<form class="navbar-form pull-left">
							<div class="input-group" style="max-width: 470px;">
								<input type="text" class="form-control" placeholder="검색"
									name="srch-term" id="srch-term">
								<div class="input-group-btn">
									<button class="btn btn-default btn-primary" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>
					</li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="glyphicon glyphicon-user"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">내 계정</a></li>
							<li><a href="#">내 서베이</a></li>
							<li><a href="#">내 포인트</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="glyphicon glyphicon-bell"></i></a>
						<ul class="dropdown-menu">
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
						</ul></li>
					<li><a href="#" id="btnToggle"><i
							class="glyphicon glyphicon-globe"></i></a></li>
					<li><a class="btn btn-primary center-block" href="#">설문작성</a></li>

				</ul>
			</div>
		</div>
	</div>
</nav>