<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="koala"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>VARCHAR</title>
<!-- 파비콘 설정 -->
<link rel="shortcut icon" href="./images/vc.ico">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.css" />

<link rel="stylesheet" href="css/owl.carousel.min.css" />
<link rel="stylesheet" href="css/owl.theme.default.min.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />

<link rel="stylesheet" href="css/aos.css" />
<link rel="stylesheet" href="css/map.css" />
<link rel="stylesheet" href="css/ionicons.min.css" />

<link rel="stylesheet" href="css/bootstrap-datepicker.css" />
<link rel="stylesheet" href="css/jquery.timepicker.css" />

<link rel="stylesheet" href="css/flaticon.css" />
<link rel="stylesheet" href="css/icomoon.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/board.css" />

<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 네비게이션 바 시작-->
	<koala:nav />
	<!-- 네비게이션 바 종료 -->
	<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 상단 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('images/bg_3.jpg')"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i>
						</a></span>
					</p>
					<h1 class="mb-3 bread">Q & A</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 종료 -->
	<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 중앙 시작-->
	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-4">
					<!-- VARCHAR주소,번호,이메일 시작 -->
					<div class="row mb-5">
						<div class="col-md-12">
							<div class="border w-100 p-4 rounded mb-2 d-flex">
								<div class="icon mr-3">
									<span class="icon-map-o"></span>
								</div>
								<p>
									<span>Address:</span>서울특별시 강남구 역삼동 736-7
								</p>
							</div>
						</div>
						<div class="col-md-12">
							<div class="border w-100 p-4 rounded mb-2 d-flex">
								<div class="icon mr-3">
									<span class="icon-mobile-phone"></span>
								</div>
								<p>
									<span>Phone:</span> <a href="tel://1234567920">02-1234-1234</a>
								</p>
							</div>
						</div>
						<div class="col-md-12">
							<div class="border w-100 p-4 rounded mb-2 d-flex">
								<div class="icon mr-3">
									<span class="icon-envelope-o"></span>
								</div>
								<p>
									<span>Email:</span> <a href="mailto:info@yoursite.com">sudal1234@koala.com</a>
								</p>
							</div>
						</div>
					</div>
					<!-- VARCHAR주소,번호,이메일 종료 -->
				</div>
				<div class="col-md-8 block-9 mb-md-5">
					<!-- 로그인 성공시 게시물 작성 시작 -->
					<c:if test="${userId!=null}">
						<form action="insertB.do" class="bg-light p-5 contact-form">
							<div class="form-group">
								<input name="mid" type="text" class="form-control"
									value="${userId}" readonly />
							</div>
							<div class="form-group">
								<input name="btitle" type="text" class="form-control"
									placeholder="제목" autocomplete="off" required />
							</div>
							<div class="form-group">
								<textarea name="bcontent" id="" cols="30" rows="7"
									class="form-control" placeholder="게시글을 작성해보세요!"
									autocomplete="off" required></textarea>
							</div>
							<div class="form-group insertBoardBtn">
								<c:set var="bd" value="${bdata}" />
								<input type="hidden" name="mnickname" value="${bd.mnickname}" />
								<input type="submit" value="게시글 작성"
									class="btn btn-primary py-3 px-5" />
							</div>
						</form>
					</c:if>
					<!-- 로그인 성공시 게시물 작성 종료 -->
					<!-- 로그인 안했을 때 게시물 작성 시작 -->
					<c:if test="${userId==null}">
						<form action="login.jsp" class="bg-light p-5 contact-form">
							<div class="form-group">
								<input name="mid" type="text" class="form-control"
									placeholder="비로그인" readonly />
							</div>
							<div class="form-group">
								<input name="btitle" type="text" class="form-control"
									placeholder="제목" readonly />
							</div>
							<div class="form-group">
								<textarea name="bcontent" id="" cols="30" rows="7"
									class="form-control" placeholder="게시글을 작성하시려면 로그인하세요!" readonly></textarea>
							</div>
							<div class="form-group insertBoardBtn">
								<input type="submit" value="로그인하기"
									class="btn btn-primary py-3 px-5" />
							</div>
						</form>
					</c:if>
					<!-- 로그인 안했을 때 게시물 작성 종료 -->
				</div>
			</div>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
			<!-- 게시글 div 시작 -->
			<div class="boardMenu">
				<!-- 게시글 검색 시작 -->
				<div class="searchBox">
					<form action="searchR.do" method="GET">
						<label>제목</label> <input type="text" name="btitle"
							id="titleSearch" value="${btitle}" autocomplete="off" /> <input
							type="submit" value="검색" />
					</form>
				</div>
				<!-- 게시글 검색 종료 -->
				<!-- 게시글 목록 시작 -->
				<ul class="menuBox" id="boardSet">
					<c:forEach var="b" items="${bList}" varStatus="status">
						<c:set var="c" value="${b.boardVO}" />
						<li><a href="#menu+${status.count}">${c.btitle}</a>
						<koala:delete type="content" bnum="${c.bnum}" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="boardInfo">(${c.mid}님,&nbsp;&nbsp;&nbsp;${c.bdate})</span><i
							class="openArrow"><img src="images/down_arrow.png" /></i>
							<ul>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${c.bcontent}</li>
								<li><c:forEach var="r" items="${b.rList}">
										<hr>
										<li class="reply">[${r.mid}]&nbsp;&nbsp;<koala:delete
												type="reply" rid="${r.rid}" /><br> ${r.cmsg}
										</li>
									</c:forEach></li>
							</ul> <c:if test="${mrole=='admin'}">
								<form action="insertR.do" method="post" class="replyForm">
									<input type="hidden" name="mid" value="${userId}"> <input
										type="hidden" name="bnum" value="${c.bnum}"> 댓글 : <input
										type="text" name="cmsg" autocomplete=""> <input
										type="submit" value="댓글 등록" class="replyInput">
								</form>
							</c:if></li>

					</c:forEach>
				</ul>
				<!-- 게시글 목록 종료 -->

			</div>
			<!-- 게시글 div 종료 -->
			<!-- 게시글 더보기 시작 -->
			<c:if test="${totalDatas > 5}">
				<div class="moreBoard">
					<button type="button" id="viewMoreBtn">view more</button>
				</div>
			</c:if>
			<!-- 게시글 더보기 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
			<!-- 지도관련 요소 넣는 곳 시작 -->
			<div class="row justify-content-center">
				<div class="col-md-12">
					<script
						src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

					<h3 id="mapTitle">WHERE IS VARCHAR ?</h3>
					<!-- 구글맵 시작 -->
					<div id="map">
						<script
							src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAv7LwXYV_LZn5A6X6dIyGFKLUo0bRr1XE&callback=initMap&v=weekly"
							defer></script>
					</div>
					<!-- 구글맵 종료 -->
					<!-- VARCHAR매장 위치 마커이동버튼 시작 -->
					<div id="storeContainer">
						<button type="button" id="CarStore1" class="carStore">역삼점</button>
						<button type="button" id="CarStore2" class="carStore">하남1호점</button>
						<button type="button" id="CarStore3" class="carStore">하남2호점</button>
						<button type="button" id="CarStore4" class="carStore">군자점</button>
						<button type="button" id="CarStore5" class="carStore">거여점</button>
						<button type="button" id="CarStore6" class="carStore">신림점</button>
						<button type="button" id="CarStore7" class="carStore">시흥점</button>
					</div>
					<!-- VARCHAR매장 위치 마커이동버튼 종료 -->
				</div>
			</div>
			<!-- 지도관련 요소 넣는 곳 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
		</div>
	</section>
	<!-- 중앙 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 하단 시작 -->
	<koala:footer />
	<!-- 하단 종료 -->

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
	<script src="js/boardMenu.js"></script>
	<script src="js/changeArrow.js"></script>
	
	<script>
   let bcnt = 0; // 보여줄 게시글의 첫 번째 인덱스
   const moreContent = 5; // 더 보여줄 게시글 개수
   let contentAmount = ${totalDatas}; // 총 게시글
   let countMenu = contentAmount;
   
   bcnt += moreContent;   
   
   let titleInput = document.getElementById("titleSearch").value; // 제목 검색 정보
   
    document.getElementById("viewMoreBtn").onclick = () => { // viewMoreBtn : 더보기 버튼
       console.log("더보기 시작");
         console.log(bcnt);
         console.log(contentAmount);         
               $.ajax({
                  type : 'GET',
                  url : '${pageContext.request.contextPath}/moreBoard.do', 
                  data : {bcnt:bcnt, btitle:titleInput},
                  success : function(result) {
                     // boardList : 더 보여줄 상품 / showMore : 더보기 버튼 hiding 여부
                     console.log(result);
                     console.log(result.boardList);
                     console.log(result.showMore);
                  //   console.log(typeof result.showMore);
                     if (result.boardList.length == 0 ) {
                        console.log("ajax로그 : 더 보여줄 결과 없음");
                        return;
                     } else {

                        // 총 N개의 상품을 보고 있습니다.
                        contentAmount += result.boardList.length;
                        $("#totalAmount").text("총 " + contentAmount + "/${totalDatas} 개의 상품을 보고 있습니다");
                        console.log("ajax로그 : 더 보여줄 결과 존재");
                        let NodeList = "";
               $(result.boardList).each(function() {
            	  bcnt++; 
            	   
                  let newNode = "";
                   newNode += "<li>";
                   newNode += "<a href='#menu+" + bcnt + "'>" + this.boardVO.btitle + "</a>";
                   console.log(this.boardVO.btitle)
                     
                   if(${mrole=='admin'}) {
                         newNode += "<a href='deleteB.do?bnum=" + this.boardVO.bnum + "'>[삭제]</a>" 
                   }
                   newNode += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; 
                   newNode += "<span class='boardInfo'>(" + this.boardVO.mid + "님,&nbsp;&nbsp;&nbsp;" + this.boardVO.bdate + ")</span>";
                   newNode += "<ul>";
                   newNode += "<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + this.boardVO.bcontent + "</li>";
                   newNode += "<li>";
                   if(this.rList.length != 0) {
                      $(this.rList).each(function() {
                         newNode += "<hr>";
                         newNode += "<li class='reply'>[" + this.mid + "]&nbsp;&nbsp;";
                         
                         if(${mrole=='reply'}) {
                               newNode += "<a href='deleteR.do?&rid=" + this.rid + "'>[삭제]</a>";
                            }
                         newNode += "<br>" + this.cmsg + "</li>";
                         newNode += "<hr>";
                      })
                   }
                   newNode += "</li>";
                   newNode += "</ul>";
                   if(${mrole=='admin'}) {
                      newNode += "<form action='insertR.do' method='post' class='replyForm'>"
                      newNode += "<input type='hidden' name='mid' value=${userId}>";
                      newNode += "<input type='hidden' name='bnum' value='" + this.boardVO.bnum + "'> 댓글 : ";
                      newNode += "<input type='text' name='cmsg' autocomplete='off'>"
                      newNode += "<input type='submit' value='댓글 등록' class='replyInput'>"
                      newNode += "</form>";
                   }
                   newNode += "</li>";
                  NodeList += newNode;
                  })
                    $(NodeList).appendTo($("#boardSet")); // 상품 내용 추가할 html 영역
                  if(!result.showMore) { // 상품 모두 출력 -> 더보기 버튼 XX
                	  	console.log("더보기 없어짐");
                         document.getElementById("viewMoreBtn").style.display = "none";
                  }
                  }
               },
               error : function(request, status,
                     error) {
                  console.log("상태코드 : "
                        + request.status);
                  console.log("오류메세지 : "
                        + request.responseText);
                  console.log("에러 : " + error);
               }
            });
      };
  
   </script>

</body>
</html>