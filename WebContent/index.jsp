<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- jstl 변수 사용을 위해 taglib 로드! -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	String path = request.getContextPath();

 %>
<c:set var="path" value="<%=request.getContextPath()%>" />
<!-- 상대경로 지정을 위해 jstl path 변수에 프로젝트 경로명 저장 -->

<!-- HTML 영역 시작 -->
<!DOCTYPE html>
<html lang="ko">

<!-- <head>영역 시작  -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>스카이 서베이</title>
	<meta name="generator" content="Mezeet" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet">
	<!--[if lt IE 9]>
					<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
				<![endif]-->
	<link href="${path}/assets/css/styles.css" rel="stylesheet">
	</head>
	<!-- <head>영역 끝  -->
	
	<!-- 	<body> 영역 시작 -->
	<body>
	
		<!-- 		고정 헤더 네비게이션 막대 부분 시작 -->
			<jsp:include page="./common/header-nav.jsp">
			<!--  디렉티브를 사용할 경우, 부모의 변수를 자식에게 전달해줘야 자식 페이지에서 쓸 수있다. -->
			<!--변수를 구지 전달하고 싶지 않으면 <%@ include file="" %> 을 이용할 것!-->
				<jsp:param name="path" value="${path}"></jsp:param>
			</jsp:include>
		<!-- 		고정 헤더 네비게이션 막대 부분 시작 -->
		
		

		<!-- 메인 영역 시작-->
		<div class="container" id="main"> <!-- container 클래스는 콘텐츠를 중앙으로 정렬시킨다. -->
		   <div class="row">
		   <div class="col-md-4 col-sm-6">
		        <div class="panel panel-default">
		          <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootstrap Examples</h4></div>
		   			<div class="panel-body">
		              <div class="list-group">
		                <a href="http://bootply.com/tagged/modal" class="list-group-item">Modal / Dialog</a>
		                <a href="http://bootply.com/tagged/datetime" class="list-group-item">Datetime Examples</a>
		                <a href="http://bootply.com/tagged/datatable" class="list-group-item">Data Grids</a>
		              </div>
		            </div>
		   		</div>
		        <div class="well"> 
		             <form class="form-horizontal" role="form">
		              <h4>What's New</h4>
		               <div class="form-group" style="padding:14px;">
		                <textarea class="form-control" placeholder="Update your status"></textarea>
		              </div>
		              <button class="btn btn-success pull-right" type="button">Post</button><ul class="list-inline"><li><a href="#"><i class="glyphicon glyphicon-align-left"></i></a></li><li><a href="#"><i class="glyphicon glyphicon-align-center"></i></a></li><li><a href="#"><i class="glyphicon glyphicon-align-right"></i></a></li></ul>
		            </form>
		        </div>
		     
		        <div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>More Templates</h4></div>
		   			<div class="panel-body">
		              <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Free @Bootply</a>
		              <div class="clearfix"></div>
		              There a load of new free Bootstrap 3 ready templates at Bootply. All of these templates are free and don't require extensive customization to the Bootstrap baseline.
		              <hr>
		              <ul class="list-unstyled"><li><a href="http://www.bootply.com/templates">Dashboard</a></li><li><a href="http://www.bootply.com/templates">Darkside</a></li><li><a href="http://www.bootply.com/templates">Greenfield</a></li></ul>
		            </div>
		         </div> 
		
			</div>
		  	<div class="col-md-4 col-sm-6">
		      	 
		          <div class="well"> 
		             <form class="form">
		              <h4>Sign-up</h4>
		              <div class="input-group text-center">
		              <input type="text" class="form-control input-lg" placeholder="Enter your email address">
		                <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="button">OK</button></span>
		              </div>
		            </form>
		          </div>
		
		      	 <div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootply Editor &amp; Code Library</h4></div>
		   			<div class="panel-body">
		              <p><img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">The Bootstrap Playground</a></p>
		              <div class="clearfix"></div>
		              <hr>
		              Design, build, test, and prototype using Bootstrap in real-time from your Web browser. Bootply combines the power of hand-coded HTML, CSS and JavaScript with the benefits of responsive design using Bootstrap. Find and showcase Bootstrap-ready snippets in the 100% free Bootply.com code repository.
		            </div>
		         </div>
		      
		      	 <div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Portlet Heading</h4></div>
		   			<div class="panel-body">
		              <ul class="list-group">
		              <li class="list-group-item">Modals</li>
		              <li class="list-group-item">Sliders / Carousel</li>
		              <li class="list-group-item">Thumbnails</li>
		              </ul>
		            </div>
		   		 </div>
		      
		  	</div>
		  	<div class="col-md-4 col-sm-6">
		         <div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Portlet Heading</h4></div>
		   			<div class="panel-body">
		              <ul class="list-group">
		              <li class="list-group-item">Bootply Playground</li>
		              <li class="list-group-item">Bootstrap Editor</li>
		              <li class="list-group-item">Bootstrap Templates</li>
		              </ul>
		            </div>
		   		</div>
		        
		        <div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Stackoverflow</h4></div>
		   			<div class="panel-body">
		              <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Keyword: Bootstrap</a>
		              <div class="clearfix"></div>
		              <hr>
		              
		              <p>If you're looking for help with Bootstrap code, the <code>twitter-bootstrap</code> tag at <a href="http://stackoverflow.com/questions/tagged/twitter-bootstrap">Stackoverflow</a> is a good place to find answers.</p>
		              
		              <hr>
		              <form>
		              <div class="input-group">
		                <div class="input-group-btn">
		                <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
		                </div>
		                <input type="text" class="form-control" placeholder="Add a comment..">
		              </div>
		          	  </form>
		              
		            </div>
		         </div>
		 
		        <div class="panel panel-default">
		          <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Top Items</h4></div>
		   			<div class="panel-body">
		              <div class="list-group">
		                <a href="http://bootply.com/tagged/bootstrap-3" class="list-group-item active">Bootstrap 3</a>
		                <a href="http://bootply.com/tagged/snippets" class="list-group-item">Snippets</a>
		                <a href="http://bootply.com/tagged/example" class="list-group-item">Examples</a>
		              </div>
		            </div>
		   		</div>
		      
		    </div>
		  </div><!--/row-->
		  
		  <hr>
		  
		  <div class="row">
		  	<div class="col-md-12"><h2>Posts</h2></div>
		    <div class="col-md-4 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Upgrade to Bootstrap 3</h4></div>
		   			<div class="panel-body">
		              <img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=70" class="img-circle pull-right"> <a href="#">Guidance and Tools</a>
		              <div class="clearfix"></div>
		              <hr>
		              <p>Migrating from Bootstrap 2.x to 3 is not a simple matter of swapping out the JS and CSS files.
		              Bootstrap 3 is a major overhaul, and there are a lot of changes from Bootstrap 2.x. <a href="http://bootply.com/bootstrap-3-migration-guide">This guidance</a> is intended to help 2.x developers transition to 3.
		              </p>
		              <h5><a href="http://google.com/+bootply">More on Upgrading from +Bootply</a></h5>
		              
		            </div>
		         </div> 
		    </div>
		     <div class="col-md-4 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Profiles</h4></div>
		   			<div class="panel-body">
		              Check out some of our member profiles..
		              <hr>
		              <div class="well well-sm">
		                <div class="media">
		                    <a class="thumbnail pull-left" href="#">
		                        <img class="media-object" src="//placehold.it/80">
		                    </a>
		                    <div class="media-body">
		                        <h4 class="media-heading">John Doe</h4>
		                		<p><span class="label label-info">10 photos</span> <span class="label label-primary">89 followers</span></p>
		                        <p>
		                           <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Message</a>
		                           <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
		                        </p>
		                    </div>
		                </div>
		               </div>
		            </div>
		         </div> 
		    </div>
		     <div class="col-md-4 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Inspiration</h4></div>
		   			<div class="panel-body">
		              <img src="//placehold.it/150" class="img-circle pull-right"> <a href="#">Articles</a>
		              <div class="clearfix"></div>
		              <hr>
		              <div class="clearfix"></div>
		              <img src="http://placehold.it/120x90/3333CC/FFF" class="img-responsive img-thumbnail pull-right">
		              <p>The more powerful (and 100% fluid) Bootstrap 3 grid now comes in 4 sizes (or "breakpoints"). Tiny (for smartphones), Small (for tablets), Medium (for laptops) and Large (for laptops/desktops).</p>
		              <div class="clearfix"></div>
		              <hr>
		              <div class="clearfix"></div>
		              <img src="http://placehold.it/120x90/33CC33/FFF" class="img-responsive img-thumbnail pull-left" style="margin-right:5px;">
		              <p>Mobile first" is a responsive Web design practice that prioritizes consideration of smart phones and mobile devices when creating Web pages.</p>
		              
		              
		            </div>
		         </div> 
		    </div><!--/articles-->
		    </div>
		    
		    <hr>
		  
			<div class="row">
			   <div class="col-sm-4 col-xs-6">
		        <div class="panel panel-default">
		          <div class="panel-thumbnail"><img src="//placehold.it/450X300/DD3333/EE3333" class="img-responsive"></div>
		          <div class="panel-body">
		            <p class="lead">Hacker News</p>
		            <p>120k Followers, 900 Posts</p>
		            
		            <p>
		              <img src="http://api.randomuser.me/portraits/med/men/20.jpg" width="28px" height="28px">
		              <img src="http://api.randomuser.me/portraits/med/men/21.jpg" width="28px" height="28px">
		              <img src="http://api.randomuser.me/portraits/med/men/14.jpg" width="28px" height="28px">
		            </p>
		          </div>
		        </div>
		      </div><!--/col-->
		      
		      <div class="col-sm-4 col-xs-6">
		      	<div class="panel panel-default">
		          <div class="panel-thumbnail"><img src="//placehold.it/450X300/DD66DD/EE77EE" class="img-responsive"></div>
		          <div class="panel-body">
		            <p class="lead">Bootstrap Templates</p>
		            <p>902 Followers, 88 Posts</p>
		            
		            <p>
		              <img src="http://api.randomuser.me/portraits/med/men/4.jpg" width="28px" height="28px">
		              <img src="http://api.randomuser.me/portraits/med/men/24.jpg" width="28px" height="28px">
		            </p>
		          </div>
		        </div>
		      </div><!--/col-->
		      
		      <div class="col-sm-4 col-xs-6">
		      	<div class="panel panel-default">
		          <div class="panel-thumbnail"><img src="//placehold.it/450X300/2222DD/2222EE" class="img-responsive"></div>
		          <div class="panel-body">
		            <p class="lead">Social Media</p>
		            <p>19k Followers, 789 Posts</p>
		            
		            <p>
		              <img src="http://api.randomuser.me/portraits/med/women/4.jpg" height="28px">
		              <img src="http://api.randomuser.me/portraits/med/men/4.jpg" width="28px" height="28px">
		            </p>
		          </div>
		        </div>
		      </div><!--/col-->
		     
		  	</div>
		  
		  	<hr>
		  
		  	<div class="row">
		  		<div class="col-md-12"><h2>Playground</h2></div>
		        <div class="col-md-12">
		          <div class="alert alert-info alert-dismissable">
		              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
		              <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
		          </div>
		        </div>
		    	<div class="col-md-6 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Buttons &amp; Labels</h4></div>
		   			<div class="panel-body">
		              <div class="row">
		                <div class="col-xs-4"><a class="btn btn-default center-block" href="#">Button</a></div>
		                <div class="col-xs-4"><a class="btn btn-primary center-block" href="#">Primary</a></div>
		                <div class="col-xs-4"><a class="btn btn-danger center-block" href="#">Danger</a></div>
		              </div>
		              <br>
		              <div class="row">
		                <div class="col-xs-4"><a class="btn btn-warning center-block" href="#">Warning</a></div>
		                <div class="col-xs-4"><a class="btn btn-info center-block" href="#">Info</a></div>
		                <div class="col-xs-4"><a class="btn btn-success center-block" href="#">Success</a></div>
		              </div>
		              <hr>
		              <div class="btn-group btn-group-sm"><button class="btn btn-default">1</button><button class="btn btn-default">2</button><button class="btn btn-default">3</button></div>              
		              <hr>
		              <div class="row">
		              <div class="col-md-4">
		                <span class="label label-default">Label</span>
		                <span class="label label-success">Success</span>
		                
		              </div>
		              <div class="col-md-4">
		              	<span class="label label-warning">Warning</span>  
		                <span class="label label-info">Info</span>
		              </div>
		              <div class="col-md-4">
		                <span class="label label-danger">Danger</span>
		                <span class="label label-primary">Primary</span>
		                </div>
		              </div>
		              
		            </div>
		         </div> 
		    </div>
		     <div class="col-md-6 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Progress Bars</h4></div>
		   			<div class="panel-body">
		              
		              <div class="progress">
		                <div class="progress-bar progress-bar-info" style="width: 20%"></div>
		              </div>
		              <div class="progress">
		                <div class="progress-bar progress-bar-success" style="width: 40%"></div>
		              </div>
		              <div class="progress">
		                <div class="progress-bar progress-bar-warning" style="width: 80%"></div>
		              </div>
		              <div class="progress">
		                <div class="progress-bar progress-bar-danger" style="width: 50%"></div>
		              </div>
		              
		            </div>
		         </div> 
		    </div>
		     <div class="col-md-6 col-sm-6">
		    	<div class="panel panel-default">
		           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Tabs</h4></div>
		   			<div class="panel-body">
		
		                <ul class="nav nav-tabs">
		                  <li class="active"><a href="#A" data-toggle="tab">Section 1</a></li>
		                  <li><a href="#B" data-toggle="tab">Section 2</a></li>
		                  <li><a href="#C" data-toggle="tab">Section 3</a></li>
		                </ul>
		                <div class="tabbable">
		                  <div class="tab-content">
		                    <div class="tab-pane active" id="A">
		                      <div class="well well-sm">I'm in Section A.</div>
		                    </div>
		                    <div class="tab-pane" id="B">
		                      <div class="well well-sm">Howdy, I'm in Section B.</div>
		                    </div>
		                    <div class="tab-pane" id="C">
		                      <div class="well well-sm">I've decided that I like wells.</div>
		                    </div>
		                  </div>
		                </div> <!-- /tabbable -->
		              
		                <div class="col-sm-12 text-center">
		                  <ul class="pagination center-block" style="display:inline-block;">
		                    <li><a href="#">«</a></li>
		                    <li><a href="#">1</a></li>
		                    <li><a href="#">2</a></li>
		                    <li><a href="#">3</a></li>
		                    <li><a href="#">4</a></li>
		                    <li><a href="#">5</a></li>
		                    <li><a href="#">»</a></li>
		                  </ul>
		                </div>
		              
		            </div>
		         </div> 
		    </div><!--playground-->
		    
		    <br>
		    
		    <div class="clearfix"></div>
		      
		    <hr>
		    <div class="col-md-12 text-center"><p><a href="http://www.bootply.com/download/90113" target="_ext">Download Google Plus Style Template</a><br><a href="http://bootply.com/templates" target="_ext">More Bootstrap Templates by @Bootply</a></p></div>
		    <hr>
		    
		  </div>
		</div><!--/main-->

		<!--login modal-->
		<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		  <div class="modal-dialog">
		  <div class="modal-content">
		      <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		          <h2 class="text-center"><img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"><br>Login</h2>
		      </div>
		      <div class="modal-body">
		          <form class="form col-md-12 center-block">
		            <div class="form-group">
		              <input type="text" class="form-control input-lg" placeholder="Email">
		            </div>
		            <div class="form-group">
		              <input type="password" class="form-control input-lg" placeholder="Password">
		            </div>
		            <div class="form-group">
		              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
		              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
		            </div>
		          </form>
		      </div>
		      <div class="modal-footer">
		          <div class="col-md-12">
		          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
				  </div>	
		      </div>
		  </div>
		  </div>
		</div>

		<!--about modal-->
		<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		  <div class="modal-dialog">
		  <div class="modal-content">
		      <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		          <h2 class="text-center">About</h2>
		      </div>
		      <div class="modal-body">
		          <div class="col-md-12 text-center">
		            <a href="http://www.bootply.com/DwnjTNuvVt">This Bootstrap Template</a><br>was made with <i class="glyphicon glyphicon-heart"></i> by <a href="http://bootply.com/templates">Bootply</a>
		            <br><br>
		            <a href="https://github.com/iatek/bootstrap-google-plus">GitHub Fork</a>
		          </div>
		      </div>
		      <div class="modal-footer">
		          <button class="btn" data-dismiss="modal" aria-hidden="true">OK</button>
		      </div>
		  </div>
		  </div>
		</div>
		
		<!-- script references -->
		<script src="${path}/assets/js/jquery-2.1.3.min.js"></script>
		<script src="${path}/assets/js/bootstrap.min.js"></script>
		<script src="${path}/assets/js/scripts.js"></script>
	</body>
<!-- 	<body> 영역 끝 -->
</html>
<!-- HTML 영역 끝 -->