<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="row panel">
	<div class="col-xs-12">
	
	<br>

		<!--  설문 작성 대기 카드 시작 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1"><i class="fa fa-check"></i>&nbsp; 투표
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2"><i class="fa fa-weixin"></i>&nbsp; 답변
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3"><i class="fa fa-star"></i>&nbsp; 평가
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option4"><i class="fa fa-thumbs-up"></i>&nbsp; 대결
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option5"><i class="fa fa-list-alt"></i>&nbsp; 복합
								  </label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="input-group">
								  <input type="text" class="form-control">
								  <span class="input-group-addon btn"><i class="glyphicon glyphicon-camera"></i></span>
								</div>
							</div>
						</div>


						
					</form>
				</div>
			</div>
		</div>
		<!--  설문 작성 대기 카드 끝 -->
	

	
		<!-- 	최신/인기/추천 설문 골라내기 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="btn-group btn-group-justified" data-toggle="buttons">
				  <label class="btn btn-default">
				    <input type="radio" name="options" id="option1">최신설문
				  </label>
				  <label class="btn btn-default">
				    <input type="radio" name="options" id="option2">인기설문
				  </label>
				  <label class="btn btn-default">
				    <input type="radio" name="options" id="option3">유료설문
				  </label>
				</div>
			</div>
		</div>
		 
		<!-- 	복합 설문 카드 보기 영역 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="well well-sm">
							<div class="media">
								<a class="pull-left" href="#">
								<i class="fa fa-clipboard fa-5x fa-fw"></i>
								</a>
								<a class="pull-right" href="#">
									<i class="fa fa-caret-square-o-right fa-5x fa-fw"></i>
									<p class="text-center">20 포인트</p>

								</a>
								<div class="media-body">
									<h4 class="">오락분야 13명 남음</h4>
									<p>해당 설문에 대한 설명</p>
								</div>
							</div>
						</div>
			
			</div>
		</div>
		<!-- 	복합 설문 카드 보기 영역 끝 -->
		 
		 
		 <!--  투표 간단 	설문 카드 보기 영역 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="media">
						<a class="thumnail pull-left" href="#">
							<img	class="media-object" src="//placehold.it/80">
						</a>
						<a class="thumnail pull-right" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						
						<div class="media-body">
							<h4 class="media-heading">사용자 ID<small>&nbsp;<ago class="timeago" title="2015-03-25T09:24:17Z"></ago></small></h4>
					
							<p><span>가장 배우고 싶은 언어는?</span></p>
							
							<ul class="list-inline">
								<li><i class="fa fa-check"></i></li>
									<li>스페인어</li>
									<li>스웨덴어</li>
									<li>외계어</li>
									<li>뱅갈라어</li>
							</ul>
						</div>
						<div class="media-footer">
   						<h4 class="pull-right">	
	   						<span class="label btn label-primary">투표하기</span>	
	   						<span class="label label-default">42명 참여</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 	투표 설문 카드 보기 영역 끝 -->
		
		
		<!--  답변 간단 	설문 카드 보기 영역 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="media">
						<a class="thumnail pull-left" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						<a class="thumnail pull-right" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						
						<div class="media-body">
							<h4 class="media-heading">사용자 ID<small>&nbsp;<ago class="timeago" title="2015-03-17T09:24:17Z"></ago></small></h4>
					
							<p><span>비오는 날에 무슨 생각이 드나요?</span></p>
							
							<ul class="list-inline">
								<li><i class="fa fa-weixin"></i></li>
									<li>빗소리가 창문을 두드리는 여름 밤에 당신은 ....</li>
							
							</ul>
						</div>
						<div class="media-footer">
   						<h4 class="pull-right">
	   						<span class="label btn label-primary">답변하기</span>
	   						<span class="label label-default">22명 참여</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 	답변 설문 카드 보기 영역 끝 -->		
		
		<!--  평가 간단 	설문 카드 보기 영역 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="media">
						<a class="thumnail pull-left" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						<a class="thumnail pull-right" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						
						<div class="media-body">
							<h4 class="media-heading">사용자 ID<small>&nbsp;<ago class="timeago" title="2015-03-07T09:24:17Z"></ago></small></h4>
					
							<p><span>한달 평균 식비가 얼마인가요?</span></p>
							
							<ul class="list-inline">
								<li><i class="fa fa-star"></i></li>
									<li></li>
							</ul>
						</div>
						<div class="media-footer">
   						<h4 class="pull-right">
	   						<span class="label btn label-primary">평가하기</span>
	   						<span class="label label-default">10명 참여</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 	 평가 카드 보기 영역 끝 -->	
		
		<!--  대결 간단 	설문 카드 보기 영역 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="well well-sm">
					<div class="media">
						<a class="thumnail pull-left" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						<a class="thumnail pull-right" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						<a class="thumnail pull-right" href="#">
							<img class="media-object" src="//placehold.it/80">
						</a>
						
						<div class="media-body">
							<h4 class="media-heading">사용자 ID<small>&nbsp;<ago class="timeago" title="2015-03-02T09:24:17Z"></ago></small></h4>
					
							<p><span>다음 두 개 중 더 귀여운 개를 골라주세요~</span></p>
							
							<ul class="list-inline">
								<li><i class="fa fa-thumbs-up"></i></li>
									<li></li>
							</ul>
						</div>
						<div class="media-footer">
   						<h4 class="pull-right">
	   						<span class="label btn label-primary">대결하기</span>
	   						<span class="label label-default">10명 참여</span>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 	 대결 카드 보기 영역 끝 -->	
			</div>
		</div>