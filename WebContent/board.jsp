<%@page import="com.DAO.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BoardDAO"%>
<%@page import="com.DTO.BoardDTO"%>
<%@page import="com.DTO.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TheEvent Bootstrap Template - Speaker Details</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: TheEvent - v2.2.0
  * Template URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
  <style type="text/css">
  div#board{
  width: 35%;
  }
  table#list {
    width: 100%;
}
	div#write_board{
	width: 45%;
	margin-left: 100px;
	/* visibility: hidden; */
	display : none;
	}
	#writer_close{
		visibility: hidden;
	}
 	#select_one_board{
 		width: 45%;
		 display : none; 
		 margin-left: 100px;
	}
	#speakers-details .container{
		min-height: 600px;
	}

  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
</head>

<body>
	<%
		BoardDAO dao = new BoardDAO();
	/* viewAll 메소드는 시간을 기준으로 내림차순하여 게시글을 전부를
	BoardDTO에 담아 ArrayList에 추가하여 ArrayList을 돌려준다
	*/
		MemberDAO memDAO = new MemberDAO();
		ArrayList<BoardDTO> list = dao.viewAll();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
  <!-- ======= Header ======= -->
  <header id="header" class="header-fixed">
    <div class="container">

      <div id="logo" class="pull-left">
 		<a href="main.jsp" class="scrollto">
 			<img src="assets/img/carlogo.png" alt="" title=""></a>
	</div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
					<%
						if (info == null) {
					%>
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
					<%
						} else {
					%>
					<li><a href="main.jsp#schedule">차량대여</a></li>
					<li><a href="board.jsp">문의하기</a></li>
					<li><a href="mypage.jsp">내정보</a></li>
					<li><a href="LogoutService.do">로그아웃</a></li>
					<%
						}
					%>
		</ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- End Header -->

  <main id="main" class="main-page">

    <!-- ======= Speaker Details Sectionn ======= -->
    <section id="speakers-details">
      <div class="container">
        <div class="section-header">
          <h2>게시판</h2>
        </div>

        <div class="row" style="text-align: center;" id="center">
			<div id="board" >
				<table id = "list" border="1px">
				<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>시간</td>
						<% 
						if(info != null) {
							if(info.getEmail().equals("admin")){ %>
						
						<td>삭제</td>
						<%}} %>
					</tr>
				<% for(int i=0; i<list.size();i++){ 
					String companyName = memDAO.companyName(list.get(i).getCompany_id());
					//System.out.print("회사이름"+companyName);
				%>
					<tr>
						<td><%=i+1 %></td>
						<td><a href="#" onclick="text_info('<%=list.get(i) %>', '<%=companyName %>')"> <%= list.get(i).getTitle() %></a></td>
						<td><%=companyName %></td>
						<td><%= list.get(i).getBoard_day() %></td>
						<% if(info != null) {
							
							if(info.getCompany_id() == list.get(i).getCompany_id()){ %>
						
						<td style="width: 10%;"><a style="width: 100%;" href="RemoveBoard.do?board_num=<%=list.get(i).getBoard_num() %>">삭제</a></td>
						<!-- FrontController로 이동해서 RemoveBoard 기능을 수행하시오
						하나의 게시글을 삭제하고 나면 다시 boardMain.jsp로 이동하시오 -->
						
						<%} }%>
					</tr>
					<% } %>
				
				</table>
				<!-- <a href="writerBoard.jsp"><button id="writer">글쓰기</button ></a> -->
				<button id="writer" onclick="board_write()">글쓰기</button>
				<button id="writer_close" onclick="board_hide()">닫기</button>
			</div>
			<div id = "write_board">
			<!-- multipart/form-data : 많은 파일을 업로드할때 형식 -->
				<form action="UploadBoardService.do" method="post" enctype="multipart/form-data"> 
				<table id="list" border="1px">
					<tr>
						<td>작성자</td>
						<td><%= memDAO.companyName(info.getCompany_id()) %> </td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="title" style="width: 95%;"> </td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content" rows="10" style="resize: none; width: 100%;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name = "file_name" type="file" style="float: right;">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" onclick="board_hide()" id="cancel" value="취소">
							<input type="submit" value="작성하기">
						</td>
					</tr>
				</table>
				</form>
			</div>
			
			<div id = "select_one_board">
				<table id="list" border="1px">
					<tr>
						<td>작성자</td>
						<td id = "select_one_id"></td>
					</tr>
					<tr>
						<td>작성시각</td>
						<td id = "select_one_day"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td id = "select_one_title"></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2" id="select_one_content" style="height: 150px;">			
						<!-- 이미지 처리  -->				
							<!-- <img src="#"> -->
							<br>
							
						</td>
					</tr>
					<tr>
						<td colspan="2"><button onclick="board_hide()" id="one_board_close">닫기</button></td>
					</tr>
				</table>
			</div>
			
		
			
        </div>
      </div>

    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <img src="assets/img/carlogo.png" alt="니카내카">
            <p>In alias aperiam. Placeat tempore facere. Officiis voluptate ipsam vel eveniet est dolor et totam porro. Perspiciatis ad omnis fugit molestiae recusandae possimus. Aut consectetur id quis. In inventore consequatur ad voluptate cupiditate debitis accusamus repellat cumque.</p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
      -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>


  <!-- Vendor JS Files -->

  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/superfish/superfish.min.js"></script>
  <script src="assets/vendor/hoverIntent/hoverIntent.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

  <script type="text/javascript">
  function board_write() {
	  var write_board = document.getElementById("write_board");
	  var close = document.getElementById("writer_close");
	  var select_one_board = document.getElementById("select_one_board");
		if(select_one_board.style.display == 'inline'){
			$("#select_one_title").html('');
			$("#select_one_id").html('');
			$("#select_one_content").html('');
			$("#select_one_day").html('');
			select_one_board.style.display = 'none';
		}
	  //write_board.style.visibility = 'visible';
	  write_board.style.display = 'inline';
	  close.style.visibility = 'visible';
/* 	          // Hide
	  element.style.display = 'block';          // Show
	  element.style.display = 'inline';         // Show
	  element.style.display = 'inline-block';   // Show */
}
  //글쓰는 창, 클릭시 보여주는 테이블 닫기 함수
  function board_hide(){
	  var write_board = document.getElementById("write_board");
	  var close = document.getElementById("writer_close");
	  var select_one_board = document.getElementById("select_one_board");
	  var one_board_close = document.getElementById("one_board_close");	  
	  
		$("#select_one_title").html('');
		$("#select_one_id").html('');
		$("#select_one_content").html('');
		$("#select_one_day").html('');
	 // write_board.style.visibility = 'hidden';	
	  write_board.style.display = 'none';  
	  close.style.visibility = 'hidden';

	select_one_board.style.display = 'none';  
	one_board_close.style.display = 'none';
	  
  }
  
   function text_info(content, companyName){
	var close = document.getElementById("writer_close");
	var select_one_board = document.getElementById("select_one_board");
	//var getTag = $("#select_one_title").html();
	if(select_one_board.style.display == 'inline'){
		$("#select_one_title").html('');
		$("#select_one_id").html('');
		$("#select_one_content").html('');
		$("#select_one_day").html('');
	}
	var write_board = document.getElementById("write_board");
	if(write_board.style.display == 'inline'){
		write_board.style.display = 'none';
	}
	
	/* if문 써서 해당 태그 값이 inline이면 none으로 변경 */
	  /*   select_one_board.style.display = 'none';  
		one_board_close.style.display = 'none'; */
		 close.style.visibility = 'visible';
	   select_one_board.style.display = 'inline';
	   one_board_close.style.display = 'inline';
	var list = content.split(",");
	var company_id = list[1];
	var title = list[2];
	var file_name = list[3];
	if (file_name) {
		file_name = ' ';
	} 
	var content = list[4];
	var board_day = list[5];
	
	//console.log(companyName);
	
	// tag 를 삽입한다.
	$("#select_one_title").append(title);
	$("#select_one_id").append(companyName);
	$("#select_one_content").append(content);
	$("#select_one_day").append(board_day);
	//$("#center").html(getTag);
	 	
	
	/*   var selectOne = document.getElementById("board_select_one");
	  selectOne.style.display = 'inline';
	  */
  }  
  </script>
</body>

</html>