<!-- 수정가능 영역 시작, 화면에서 가운데에 나오는 영역입니다. -->

<%-- 	프로젝트 상대경로 : ${path} --%>

<div class="row">

	<div class="small-10 large-12 small-centered columns">
	
	<form action="#">

				<!--  기본정보 카드  시작 -->
				<div class="row panel">
					<div class="small-12 columns">
					
						<div class="row text-center">
							<h3 class="text-center">기본정보</h3>
							<br>
						</div>
					
						<div class="row">	
							<div class="small-2 columns">
								<label for="kindof" class="right inline">분류</label>
							</div>
							<div class="small-10 columns"> 
								<select id = "kindof">
									<option value="sports">스포츠</option>
									<option value="politic">정치</option>
									<option value="it">IT</option>
									<option value="entertain">연예</option>
									<option value="etc">기타(직접입력)</option>
					   		</select>
					   	</div>
					   </div>
					
					<div class="row">	
						<div class="small-2 columns">
							<label for="stitle" class="right inline">제목</label>
						</div>
						<div class="small-10 columns">
							<input type="text" id="stitle" />
						</div>
					</div>
					
					<div class="row">
						<div class="small-2 columns">
	   					<label for="spcount" class="right inline">문항수</label>
	   				</div>
	   				<div class="small-10 column">
		   				<div class="row collapse">
			   				<div class="small-10 column">
			   					<input type="text" id="spcount" />
			   				</div>
			   				<div class="small-2 columns">
		   						<input type="text" id="countconf" class="button success" value="확인" />
		   					</div>
	   					</div>
   					</div>				
   					
	   			</div>
					
					<div class="row">
						<div class="small-2 columns">
							<label for="point"  class="right inline"></label>
						</div >
						<div class="small-6 medium-8 columns">
							<input type="text" id="point" /> 
   					</div>
   					<div class="small-4 medium-2 columns">
   							<label for="point"  class="left inline">포인트 차감 예정</label>
   					</div>
	   		</div>
 			</div>
 		</div>
 		
		<!--  기본정보 카드  끝 -->
		
		<br>
		
		<!--  정보 카드 1  시작 -->
		<div class="row panel view1 hide">
			<div class="small-12 columns">
				
				<div class="row">	
					<div class="small-2 columns">
						<label for="sproblem" class="right"><strong>문제 1</strong><br><small>(30자 이하)</small></label> 
					</div>
					<div class="small-10 columns"> 
						<input type="text" id="sproblem" />
			   	</div>
		   </div>
		   
		   <div class="row">	
					<div class="small-2 columns">
						<label for="probtype" class="right">보기타입</label> 
					</div>
					<div class="small-10 columns"> 
						<div class="row">
							<div class="small-4 columns">	
							<input type="radio" id="radtype" name="probtype"> 라디오
							</div>
							<div class="small-4 columns">
							<input type="radio" id="boxtype" name="probtype"> 체크박스
							</div>
							<div class="small-4 columns">
							<input type="radio" id="rigtype" name="probtype"> 주관식
							</div>
						</div>
			   	</div>
		   </div>	
			
				<div class="row">	
					<div class="small-2 columns">
						<label for="stitle" class="right inline">보기개수</label>
					</div>
					<div class="small-10 columns">
						<input type="number" min="2" max="4"  id="probcont" class="probcontC" />
					</div>
				</div>
				
				<div class="row oneprointwo hide">
							
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
					
				</div>
				
				<div class="oneprointhree hide">
				
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
				
						
				</div>
				
				<div class="oneproinfour hide">
						
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>

							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기4</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
						
					</div>	
				</div>
			</div>
			<!--  정보 카드 1  시작 -->
			
		<!--  정보 카드 2  시작 -->
		<div class="row panel view2 hide">
			<div class="small-12 columns">		
				
				<div class="row">	
					<div class="small-2 columns">
						<label for="sproblem" class="right"><strong>문제 2</strong><br><small>(30자 이하)</small></label> 
					</div>
					<div class="small-10 columns"> 
						<input type="text" id="sproblem" />
			   	</div>
		   </div>
		   
		   <div class="row">	
					<div class="small-2 columns">
						<label for="probtype" class="right">보기타입</label> 
					</div>
					<div class="small-10 columns"> 
						<div class="row">
							<div class="small-4 columns">	
							<input type="radio" id="radtype" name="probtype"> 라디오
							</div>
							<div class="small-4 columns">
							<input type="radio" id="boxtype" name="probtype"> 체크박스
							</div>
							<div class="small-4 columns">
							<input type="radio" id="rigtype" name="probtype"> 주관식
							</div>
						</div>
			   	</div>
		   </div>	
			
				<div class="row">	
					<div class="small-2 columns">
						<label for="stitle" class="right inline">보기개수</label>
					</div>
					<div class="small-10 columns">
						<input type="number" min="2" max="4"  id="probcont" class="probcontC" />
					</div>
				</div>
				
				<div class="row oneprointwo hide">
							
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
					
				</div>
				
				<div class="oneprointhree hide">
				
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
				
						
				</div>
				
				<div class="oneproinfour hide">
						
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>

							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기4</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
						
					</div>	
				</div>
			</div>
			<!--  정보 카드 2  시작 -->

		<!--  정보 카드 3  시작 -->
		<div class="row panel view3 hide">
			<div class="small-12 columns">
							
				<div class="row">	
					<div class="small-2 columns">
						<label for="sproblem" class="right"><strong>문제 3</strong><br><small>(30자 이하)</small></label> 
					</div>
					<div class="small-10 columns"> 
						<input type="text" id="sproblem" />
			   	</div>
		   </div>
		   
		   <div class="row">	
					<div class="small-2 columns">
						<label for="probtype" class="right">보기타입</label> 
					</div>
					<div class="small-10 columns"> 
						<div class="row">
							<div class="small-4 columns">	
							<input type="radio" id="radtype" name="probtype"> 라디오
							</div>
							<div class="small-4 columns">
							<input type="radio" id="boxtype" name="probtype"> 체크박스
							</div>
							<div class="small-4 columns">
							<input type="radio" id="rigtype" name="probtype"> 주관식
							</div>
						</div>
			   	</div>
		   </div>	
			
				<div class="row">	
					<div class="small-2 columns">
						<label for="stitle" class="right inline">보기개수</label>
					</div>
					<div class="small-10 columns">
						<input type="number" min="2" max="4"  id="probcont" class="probcontC" />
					</div>
				</div>
				
				<div class="row oneprointwo hide">
							
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
				</div>
				
				<div class="oneprointhree hide">
				
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
				
						
				</div>
				
				<div class="oneproinfour hide">
						
							<div class="row">
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기1</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
	
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기2</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
							
							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기3</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>

							<div class="row">							
								<div class="small-2 columns">
									<label for="stitle" class="right inline">보기4</label>
								</div>
								<div class="small-10 columns">
									<input type="text" />
								</div>
							</div>
						
					</div>	
				</div>
			</div>
			<!--  정보 카드 3  시작 -->

	</div>
</div>
		

<script src="${path}/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="${path}/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">	
	
		$(function() {
		// 문항갯수 설정부분
		    $('#countconf').click(function () {
		    	var cont = $("#spcount").val();
		    	cont = cont*1;
		    	alert(cont);
				for(var i=1; i<21; i++){
					$(".view"+i).hide();
				}
		    	for(var i=1; i<cont+1; i++){
					$(".view"+i).show("slow");
		        }
			 });
		// 보기갯수 설정부분
		    $('.probcontC').click(function () {
				if($(this).val()=="2"){
					$(this).parent().parent().siblings('.oneprointwo').show("slow");
					$(this).parent().parent().siblings('.oneprointhree').hide("slow");
					$(this).parent().parent().siblings('.oneproinfour').hide("slow");	
				}else if($(this).val()=="3"){
					$(this).parent().parent().siblings('.oneprointwo').hide("slow");
					$(this).parent().parent().siblings('.oneprointhree').show("slow");
					$(this).parent().parent().siblings('.oneproinfour').hide("slow");
				}else if($(this).val()=="4"){
					$(this).parent().parent().siblings('.oneprointwo').hide("slow");
					$(this).parent().parent().siblings('.oneprointhree').hide("slow");
					$(this).parent().parent().siblings('.oneproinfour').show("slow");
				}	
			 });    
		});
	</script>

<!-- 수정가능 영역 끝, 화면에서 가운데에 나오는 영역입니다. -->
