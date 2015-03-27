<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="row panel">

	<!--  좌측 가장자리 메뉴 시작 -->
	<div class="col-xs-3">
    <nav class="nav-sidebar">
        <ul class="nav">
            <li><a href="javascript:;">로그인 설정</a></li>
            <li class="active"><a href="javascript:;">개인 상세정보</a></li>
            <li class="nav-divider"></li>
            <li><a href="javascript:;">나의 포인트</a></li>
            <li><a href="javascript:;">환급/충전내역</a></li>                    
        </ul>
    </nav>
  </div>


	<!--  우측 개인 상세정보 영역 시작 -->
	<div class="col-xs-9">
		<div class="row">
			<h1 class="lead"><strong class="text-primary">사용자 아이디</strong>님의 상세정보 수정하기</h1>
			
			<div class="col-xs-12">	
				<form class="form-horizontal" role="form">
				    
			    <!-- Text input-->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="textinput">성명</label>
					  <div class="col-lg-10">
					    <input id="textinput" name="textinput" type="text" placeholder="성" class="form-control">
					    <p class="help-block">예) 김시습 이라면 김</p>
					  </div>
					</div>

					<!-- Multiple Radios (inline) -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="gender">성별</label>
					  <div class="col-lg-10 ">
					    <label class="radio inline" for="gender-0">
					      <input type="radio" name="gender" id="gender-0" value="남자" checked="checked">
					      남자
					    </label>
					    <label class="radio inline" for="gender-1">
					      <input type="radio" name="gender" id="gender-1" value="여자">
					      여자
					    </label>
					  </div>
					</div>

					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="education">학력</label>
					  <div class="col-lg-10">
					    <select id="education" name="education" class="input-xlarge" class="form-control">
					      <option>고등학교 졸업</option>
					      <option>대학교 졸업</option>
					      <option>대학원(석사) 졸업</option>
					      <option>대학원(박사) 졸업</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="annualFamilyIncome">연 가계소득(세전)</label>
					  <div class="col-lg-10">
					    <select id="annualFamilyIncome" name="annualFamilyIncome" class="input-xlarge">
					      <option>1000~2000</option>
					      <option>2000~3000</option>
					      <option>3000~4000</option>
					      <option>4000~5000</option>
					      <option>5000~6000</option>
					      <option>6000~7000</option>
					      <option>7000~8000</option>
					      <option>8000~9000</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="industry">업종</label>
					  <div class="col-lg-10">
					    <select id="industry" name="industry" class="input-xlarge">
					      <option>건축</option>
					      <option>통신</option>
					      <option>예술*인문*과학</option>
					      <option>가정학</option>
					      <option>보건</option>
					      <option>접대*오락</option>
					      <option>제조업</option>
					      <option>해양학</option>
					      <option>매매와 분배</option>
					      <option>천연자원*환경</option>
					      <option>개인서비스</option>
					      <option>공공서비스</option>
					      <option>수송</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="sido">시도</label>
					  <div class="col-lg-10">
					    <select id="sido" name="sido" class="input-xlarge">
					      <option>서울시</option>
					      <option>인천시</option>
					      <option>계간시</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="gu">구</label>
					  <div class="col-lg-10">
					    <select id="gu" name="gu" class="input-xlarge">
					      <option>중구</option>
					      <option>중랑구</option>
					      <option>영등포구</option>
					      <option>동작구</option>
					    </select>
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="detailAddress">나머지 주소</label>
					  <div class="col-lg-10">
					    <input id="detailAddress" name="detailAddress" type="text" placeholder="" class="input-xlarge" required="">
					    <p class="help-block">예) 16-7가 6015 번지 2층 202호</p>
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="zipcode">우편번호</label>
					  <div class="col-lg-10">
					    <input id="zipcode" name="zipcode" type="text" placeholder="" class="input-xlarge">
					    <p class="help-block">예)166-785</p>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="familyNumber">동거가족수(자신포함)</label>
					  <div class="col-lg-10">
					    <select id="familyNumber" name="familyNumber" class="input-xlarge">
					    	<option>없다</option>
					    	<option>1명</option>
					      <option>2명</option>
					      <option>3명</option>
					      <option>4명</option>
					      <option>5명</option>
					      <option>6명 이상</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="youngFamilyNumber">18세 미만 자녀 수</label>
					  <div class="col-lg-10">
					    <select id="youngFamilyNumber" name="youngFamilyNumber" class="input-xlarge">
					      <option>1명</option>
					      <option>2명</option>
					      <option>3명</option>
					      <option>4명</option>
					      <option>5명 이상</option>
					    </select>
					  </div>
					</div>
					
					<!-- Multiple Radios (inline) -->
					<div class="form-group">
					  <label class="col-lg-2 control-label" for="decisionMaker">가족 내 구매 결정권자?</label>
					  <div class="col-lg-10">
					    <label class="radio inline" for="decisionMaker-0">
					      <input type="radio" name="decisionMaker" id="decisionMaker-0" value="네" checked="checked">
					      네
					    </label>
					    <label class="radio inline" for="decisionMaker-1">
					      <input type="radio" name="decisionMaker" id="decisionMaker-1" value="아니오">
					      아니오
					    </label>
					  </div>
					</div>
				</form>		
			</div>
				
			</div>

		<!--  우측 개인 상세정보 영역 끝 -->	
			</div>
