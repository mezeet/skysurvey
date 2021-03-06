<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="servaym">
		<!--  투표 간단 설문 작성 카드 시작 -->
		<div class="row" id="vote" >
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified" id="vote-title">
									<a type="button" class="btn btn-default active opvote"><i class="fa fa-check"></i>&nbsp; 투표</a>
									<a type="button" class="btn btn-default opanswer"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
									<a type="button" class="btn btn-default opappraiser" id="opappraiser"><i class="fa fa-star"></i>&nbsp; 평가</a>
									<a type="button" class="btn btn-default opversus"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
									<a type="button" class="btn btn-default opevery"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
<!-- 				========================qselection, area 부분======================== -->
						<div class="row" id="qselection">
							<div class="col-xs-12" id="area">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon"><i class="fa fa-check"></i></div>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <label class="input-group-addon btn"><i class="fa fa-camera"></i></label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 1 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 2 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 3 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 4 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-1">
<!-- 				========================addSelection 부분======================== -->
								<a type="button" class="btn btn-default" id="addSelection"><i class="fa fa-plus"></i></a>
							</div>
							<div class="col-xs-8">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							<div class="col-xs-3 align-right">
								<button type="button" class="btn btn-default btn-block">만들기</button>
							</div>
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>
							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--  투표 간단 설문 작성 카드 끝-->

		
		<!--  답변 간단 설문 작성 카드 시작 -->
		<div class="row" id="answer" hidden>
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified" id="answer-title">
								  <a type="button" class="btn btn-default opvote"><i class="fa fa-check"></i>&nbsp; 투표</a>
								  <a type="button" class="btn btn-default active opanswer"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
								  <a type="button" class="btn btn-default opappraiser"><i class="fa fa-star"></i>&nbsp; 평가</a>
								  <a type="button" class="btn btn-default opversus"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
								  <a type="button" class="btn btn-default opevery"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-weixin"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn">
										  <i class="fa fa-camera"></i></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										  <input type="text" class="form-control"  placeholder="질문에 대한 설명">										  
										</div>
									</div>
								</div>
						</div>
						<div class="row">
							<div class="col-xs-9">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-default btn-block">만들기</button>							</div>
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>
							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--    답변 설문 작성 카드 끝-->
		
		
		<!--  평가 간단 설문 작성 카드 시작 -->
		<div class="row" id="appaiser" hidden>
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified" id="appraiser-title">
								  <a type="button" class="btn btn-default opvote"><i class="fa fa-check"></i>&nbsp; 투표</a>
								  <a type="button" class="btn btn-default opanswer"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
								  <a type="button" class="btn btn-default active opappraiser"><i class="fa fa-star"></i>&nbsp; 평가</a>
								  <a type="button" class="btn btn-default opversus"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
								  <a type="button" class="btn btn-default opevery"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-star"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn">
										  <i class="fa fa-camera"></i></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="row">
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">최소값</span>
										    <input type="text" class="form-control" placeholder="최소값">
										    </div>
										  </div>
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">최대값</span>
										    <input type="text" class="form-control" placeholder="최대 값">
										    </div>
										  </div>
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">구간의 수</span>
										    
										    <select class="form-control"  placeholder=" 구간의 수">
												  <option>1</option>
												  <option>2</option>
												  <option>3</option>
												  <option>4</option>
												  <option>5</option>
												</select>
										  	</div>
										  </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">

							<div class="col-xs-9">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-default btn-block">만들기</button>
							</div>
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>
							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--    평가 설문 작성 카드 끝-->
		
		<!--  대결 간단 설문 작성 카드 시작 -->
		<div class="row" id="versus" hidden>
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified" id="versus-title">
								  <a type="button" class="btn btn-default opvote"><i class="fa fa-check"></i>&nbsp; 투표</a>
								  <a type="button" class="btn btn-default opanswer"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
								  <a type="button" class="btn btn-default opappraiser"><i class="fa fa-star"></i>&nbsp; 평가</a>
								  <a type="button" class="btn btn-default active opversus"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
								  <a type="button" class="btn btn-default opevery"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-thumbs-up"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn">
										  <i class="fa fa-camera"></i></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="row">
										  <div class="col-xs-3">
												<div class="btn-group-vertical ">
												  <a type="button" class="btn btn-default"><i class="fa fa-upload"></i>&nbsp; 좌측 사진</a>
												  <a type="button" class="btn btn-default"><i class="fa fa-upload"></i>&nbsp; 우측 사진</a>
												  
												</div>
											</div>
											<div class="col-xs-8 col-xs-push-1">
										  	<div class="row">
										  		<div class="col-xs-6">
										  			<img src="//placehold.it/120" alt="..." class="img-thumbnail">
										  		</div>
										  		<div class="col-xs-6">
										  			<img src="//placehold.it/120" alt="..." class="img-thumbnail">
										  		</div>
												</div>
											</div>
										 </div>
										</div>
									</div>
									
									

									
									
								</div>
							</div>
						
						<div class="row">
							
							<div class="col-xs-9">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-default btn-block">만들기</button>
							</div>
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>
							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--    대결  설문 작성 카드 끝-->
		
		
		<!--  복합 간단 설문 작성 카드 시작 -->
		<div class="row" id="every" hidden>
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified" data-toggle="buttons" id="every-title">
								  <a type="button" class="btn btn-default opvote"><i class="fa fa-check"></i>&nbsp; 투표</a>
								  <a type="button" class="btn btn-default opanswer"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
								  <a type="button" class="btn btn-default opappraiser"><i class="fa fa-star"></i>&nbsp; 평가</a>
								  <a type="button" class="btn btn-default opversus"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
								  <a type="button" class="btn btn-default active opevery"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>								
<!--기존것: 혹시나해서 살려둠	    <input type="radio" name="options" class="btn btn-default active opevery" id="option5"><i class="fa fa-list-alt"></i>&nbsp; 복합 -->
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input type="text" class="form-control"  placeholder="설문 제목">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<hr>
							</div>
						</div>
						<!-- 	질문 영역 시작-->
						
						<!--	질문 1 시작 -->
						<div class="row qselection" id="qselection">
							<div class="col-xs-12 area">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-check"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn"><i class="fa fa-camera"></i></span>
										  <span class="input-group-addon btn"><i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 1 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 2 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 3 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <div class="input-group-addon bogi"> 4 </div>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-1">
								<button class="btn btn-default"><i class="fa fa-plus"></i></button>
							</div>
						</div>
						
<!-- 					================질문1 구분선================ -->
						<div class="row">
							<div class="col-xs-12">
								<hr>
							</div>
						</div>

						<!--	질문 1 끝 -->
						
						<!--	질문 2 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-weixin"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn"><i class="fa fa-camera"></i></span>
										  <span class="input-group-addon btn"><i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										  <input type="text" class="form-control"  placeholder="질문에 대한 설명">										  
										</div>
									</div>
								</div>
						</div>
						
						<div class="row">
							<div class="col-xs-12">
								<hr>
							</div>
						</div>
						
						<!--	질문 2 끝 -->
						
						<!--	질문 3 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-star"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn"><i class="fa fa-camera"></i></span>
										  <span class="input-group-addon btn"><i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="row">
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">최소값</span>
										    <input type="text" class="form-control" placeholder="최소값">
										    </div>
										  </div>
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">최대값</span>
										    <input type="text" class="form-control" placeholder="최대 값">
										    </div>
										  </div>
										  <div class="col-lg-4">
										  	<div class="input-group">
										  	<span class="input-group-addon">구간의 수</span>
										    
										    <select class="form-control"  placeholder=" 구간의 수">
												  <option>1</option>
												  <option>2</option>
												  <option>3</option>
												  <option>4</option>
												  <option>5</option>
												</select>
										  	</div>
										  </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<hr>
							</div>
						</div>
						<!--	질문 3 끝 -->
						
						<!--	질문 4 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"><i class="fa fa-thumbs-up"></i></span>
										  <input type="text" class="form-control"  placeholder="질문 제목">
										  <span class="input-group-addon btn"><i class="fa fa-camera"></i></span>
										  <span class="input-group-addon btn"><i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="row">
										  <div class="col-xs-3">
												<div class="btn-group-vertical ">
												  <a type="button" class="btn btn-default"><i class="fa fa-upload"></i>&nbsp; 좌측 사진</a>
												  <a type="button" class="btn btn-default"><i class="fa fa-upload"></i>&nbsp; 우측 사진</a>
												</div>
											</div>
										  <div class="col-xs-8 col-xs-push-1">
										  	<div class="row">
										  		<div class="col-xs-6">
										  			<img src="//placehold.it/120" alt="..." class="img-thumbnail">
										  		</div>
										  		<div class="col-xs-6">
										  			<img src="//placehold.it/120" alt="..." class="img-thumbnail">
										  		
									  		</div>
											</div>
									  </div>
									 </div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<hr>
							</div>
						</div>

						<!--	질문 4 끝 -->
						
						<!-- 	질문 영역 끝 -->
						


						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified">
								  <a type="button" class="btn btn-default ">투표질문 &nbsp;<i class="fa fa-plus"></i></a>
								  <a type="button" class="btn btn-default ">답변 &nbsp;<i class="fa fa-plus"></i></a>
								  <a type="button" class="btn btn-default ">평가 &nbsp;<i class="fa fa-plus"></i></a>
								  <a type="button" class="btn btn-default ">대결 &nbsp;<i class="fa fa-plus"></i></a>

								</div>
							</div>
						</div>
						<div class="row no-gutters">
							<div class="col-xs-8">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							
							<div class="col-xs-4">
							
								<div class="input-group ">
									
									 <input type="text" class="form-control"  placeholder="">
									
										<a class="input-group-addon btn btn-default "> 결제 </a> 
								</div>
							
							</div>
							
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>

							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--  복합 설문 작성 카드 끝-->
</div>
		