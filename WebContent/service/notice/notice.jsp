<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
		<!-- 게시글  하나 보기 영역 시작 -->
    <div class="row panel">
      <div class="col-md-12">
      	<h4>공지 게시판</h4>
      	<div class="table-responsive">

      		<table id="mytable" class="table table-bordred table-striped">

            <thead>
             <th>번호</th>
             <th>제목</th>
             <th>작성자</th>
             <th>작성일</th>

            </thead>
            
  					<tbody>
				    <tr>
					    <td>50</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
				    </tr>
				    <tr>
					    <td colspan="4" class="text-left">
					    		결제 사항이 변경 됐으니 잘 알아서 처리 부탁
					    </td>
					 
				    </tr>
				
			    </tbody>        
					</table>

					<div class="clearfix"></div>
						<ul class="pagination pull-right">
							<li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 수정</a></a></li>
							<li><a class="btn btn-primary"href="#" data-title="Delete" data-toggle="modal" data-target="#delete"><i class="fa fa-home fa-fw"></i>&nbsp; 글 삭제</a></a></li>
						  <li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 목록</a></a></li>
						</ul>


           </div>
        	</div>
				</div>
				<!-- 게시글 하나 보기 영역 끝 -->
	
	
		<!-- 게시글  수정 하기 영역 시작 -->
    <div class="row panel">
      <div class="col-md-12">
      	<h4>공지 게시판</h4>
      	<div class="table-responsive">

      		<table id="mytable" class="table table-bordred table-striped">

            <thead>
             <th>번호</th>
             <th>제목</th>
             <th>작성자</th>
             <th>작성일</th>

            </thead>
            
  					<tbody>
				    <tr>
					    <td>50</td>
					    <td><input type="text" class="form-control" placeholder="결제 사항변경 안내"></td>
					    <td>관리자</td>
					    <td><input type="date" class="form-control" value="2015-05-15"></td>

				    </tr>
				    <tr>
					    <td colspan="4" class="text-left"><textarea class="form-control " rows="3">
					    		결제 사항이 변경 됐으니 잘 알아서 처리 부탁
					    </textarea></td>
					 
				    </tr>
				
			    </tbody>        
					</table>
					</div>
					<div class="clearfix">
						
							<input type="date" class="form-control " value="2015-05-15">
							<input type="date" class="form-control " value="2015-05-15">

						</div>

						<div class="clearfix"></div>

						<ul class="pagination pull-right">
							<li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 수정취소</a></a></li>
						  <li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 수정완료</a></a></li>
						</ul>


           </div>
        	</div>
				</div>
				<!-- 게시글 수정 하기 영역 끝 -->
				
			<!-- 게시글  수정 하기 영역 시작 -->
    <div class="row panel">
      <div class="col-md-12">
      	<h4>공지 게시판</h4>
      	<div class="table-responsive">

      		<table id="mytable" class="table table-bordred table-striped">

            <thead>
             <th>번호</th>
             <th>제목</th>
             <th>작성자</th>
             <th>작성일</th>

            </thead>
            
  					<tbody>
				    <tr>
					    <td>50</td>
					    <td><input type="text" class="form-control" placeholder=""></td>
					    <td>관리자</td>
					    <td><input type="date" class="form-control" value=""></td>

				    </tr>
				    <tr>
					    <td colspan="4" class="text-left"><textarea class="form-control " rows="3">
					    		
					    </textarea></td>
					 
				    </tr>
				
			    </tbody>        
					</table>
					</div>
					<div class="clearfix">
						
							<input type="date" class="form-control " value="">
							<input type="date" class="form-control " value="">

						</div>

						<div class="clearfix"></div>

						<ul class="pagination pull-right">
							<li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 수정취소</a></a></li>
						  <li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 수정완료</a></a></li>
						</ul>


           </div>
        	</div>
				</div>
				<!-- 게시글 작성 하기 영역 끝 -->
	
		<!-- 게시글  목록 보기 영역 시작 -->
    <div class="row panel">
      <div class="col-md-12">
      	<h4>공지 게시판</h4>
      	<div class="table-responsive">

      		<table id="mytable" class="table table-bordred table-striped">

            <thead>
             <th>번호</th>
             <th>제목</th>
             <th>작성자</th>
             <th>작성일</th>
             <th>수정</th>
             <th>삭제</th>
            </thead>
            
  					<tbody>
				    <tr>
					    <td>50</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    						    <tr>
					    <td>49</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    <tr>
					    <td>48</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    <tr>
					    <td>47</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    <tr>
					    <td>46</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    <tr>
					    <td>45</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    <tr>
					    <td>44</td>
					    <td>결제 사항변경 안내</td>
					    <td>관리자</td>
					    <td>2015-05-15</td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
					    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
			    </tbody>        
					</table>

					<div class="clearfix"></div>
						<ul class="pagination pull-right">
						  <li><a class="btn btn-primary"href="#"><i class="fa fa-home fa-fw"></i>&nbsp; 글 작성하기</a></a></li>
						</ul>
						<ul class="pagination pull-left">
						  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						  <li class="active"><a href="#">1</a></li>
						  <li><a href="#">2</a></li>
						  <li><a href="#">3</a></li>
						  <li><a href="#">4</a></li>
						  <li><a href="#">5</a></li>
						  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul>

           </div>
        	</div>
				</div>
				<!-- 게시글 목록 보기 영역 끝 -->
				


<!-- 아래는 모두 모달입니다. -->

<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">글 수정하기</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="결제 사항변경 안내">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="관리자">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="결제 사항이 변동되었습니다. 착오 없도록 부탁드려요~"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> 수정완료</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">이 게시글 삭제</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp;정말 이 기록을 삭제하길 원하는게 맞습니까?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> 네</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 아니오</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
