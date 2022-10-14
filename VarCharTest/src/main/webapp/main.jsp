<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="koala"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/filterSearch.css" />

<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
	crossorigin="anonymous"></script>
</head>
<body>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 네비게이션 바 시작-->
	<koala:nav />
	<!-- 네비게이션 바 종료 -->
	<!-- 찜하기 모달창 시작 -->
	<koala:zzim />
	<!-- 찜하기 모달창 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 상단 -->
	<div class="hero-wrap ftco-degree-bg"
		style="background-image: url('images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
				<div class="col-lg-8 ftco-animate">
					<div class="text w-100 text-center mb-md-5 pb-md-5">
						<h1 class="mb-4">차를 아는 전문가가</h1>
						<p class="topSubTitle">똑똑히 알려주는 전문시세</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 상단 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 중앙 -->
	<section class="ftco-section ftco-no-pt bg-light">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-md-12   featured-top">
					<div class="row no-gutters">
						<div class="col-md-4 d-flex align-items-center">

							<!-- 메인 검색 필터 시작 -->
							<form action="filter.do"
								class="request-form ftco-animate bg-primary mainFilterBox">
								<h2 class="mainFilterTitle">내 차 찾아보기</h2>
								<!-- 가격 필터 -->
								<div class="form-group">
									<label for="" class="label">가격</label>
									<div class="d-flex">
										<div class="form-group mr-2">
											<select name="price_min" class="form-control minSelect" id="">
												<option>0</option>
												<option>1000</option>
												<option>2000</option>
												<option>3000</option>
												<option>4000</option>
												<option>5000</option>
												<option>6000</option>
												<option>7000</option>
												<option>8000</option>
												<option>9000</option>
												<option>10000</option>
												<option>11000</option>
												<option>12000</option>
												<option>13000</option>
												<option>14000</option>
												<option>15000</option>
											</select>
										</div>
										<div class="form-group ml-2">
											<select name="price_max" class="form-control maxSelect" id="">
												<option value="2147483647">전체</option>
												<option>1000</option>
												<option>2000</option>
												<option>3000</option>
												<option>4000</option>
												<option>5000</option>
												<option>6000</option>
												<option>7000</option>
												<option>8000</option>
												<option>9000</option>
												<option>10000</option>
												<option>11000</option>
												<option>12000</option>
												<option>13000</option>
												<option>14000</option>
												<option>15000</option>
											</select>
										</div>
									</div>
								</div>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
								<!-- 주행거리 필터 -->
								<div class="form-group">
									<label for="" class="label">연식</label>
									<div class="d-flex">
										<div class="form-group mr-2">
											<select name="year_min" class="form-control minSelect" id="">
												<option>2000</option>
												<option>2001</option>
												<option>2002</option>
												<option>2003</option>
												<option>2004</option>
												<option>2005</option>
												<option>2006</option>
												<option>2007</option>
												<option>2008</option>
												<option>2009</option>
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
											</select>
										</div>
										<div class="form-group ml-2">
											<select name="year_max" class="form-control maxSelect" id="">
												<option value="2023">전체</option>
												<option>2001</option>
												<option>2002</option>
												<option>2003</option>
												<option>2004</option>
												<option>2005</option>
												<option>2006</option>
												<option>2007</option>
												<option>2008</option>
												<option>2009</option>
												<option>2010</option>
												<option>2011</option>
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option>2018</option>
												<option>2019</option>
												<option>2020</option>
												<option>2021</option>
												<option>2022</option>
											</select>
										</div>
									</div>
								</div>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
								<!-- 연료 필터 -->
								<div class="form-group mainFuelFilter">
									<label for="" class="label">연료</label>
									<select name="fuel" class="form-control" id="">
										<option selected>전체</option>
										<option>가솔린</option>
										<option>전기</option>
										<option>디젤</option>
									</select>
								</div>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
								<!-- 지역 필터 -->
								<div class="form-group mainRegionFilter">
									<label for="" class="label">지역</label>
									<select name="city" class="form-control" id="">
										<option selected>전체</option>
										<option>서울</option>
										<option>경기</option>
										<option>인천</option>
										<option>대전</option>
										<option>대구</option>
										<option>울산</option>
										<option>부산</option>
										<option>광주</option>
										<option>강원</option>
										<option>충북</option>
										<option>충남</option>
										<option>경북</option>
										<option>경남</option>
										<option>전북</option>
										<option>전남</option>
										<option>제주</option>
										<option>세종</option>
									</select>
								</div>
								<input type="hidden" name="min-value" value="1000" /> <input
									type="hidden" name="max-value" value="700000" /> <input
									type="hidden" name="sort" value="최신순" />


								<div class="form-group">
									<input type="submit" value="상세조건 검색"
										class="btn btn-secondary py-3 px-4 mainFilterBtn" />
								</div>
							</form>
						</div>
						<!-- 메인 검색필터 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
						<!-- 검색필터 우측 코멘트 박스 시작 -->
						<div class="col-md-8 d-flex align-items-center">
							<div class="services-wrap rounded-right w-100 mainService">
								<h3 class="heading-section mb-4 startWithVarchar">VARCHAR와
									함께 시작하기</h3>
								<div class="row d-flex mb-4">
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-route"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">가까운 매장이 어딜까 ?</h3>
											</div>
										</div>
									</div>
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-handshake"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">최고의 딜러와 만나고 &nbsp;싶으신가요 ?</h3>
											</div>
										</div>
									</div>
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-rent"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">필요한 차가 없나요 ?</h3>
											</div>
										</div>
									</div>
								</div>
								<p class="mainServiceMsg">
									<a href="boardMain.do" class="btn btn-primary py-3 px-4">VARCHAR에게
										문의하기</a>
								</p>
							</div>
						</div>
						<!-- 검색필터 우측 코멘트 박스 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
					</div>
				</div>
			</div>
	</section>
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- VARCHAR 통계 시작 -->
	<section class="ftco-counter ftco-section img bg-light"
		id="section-counter">

		<div class="container">
			<div class="row">
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="127">0</strong> <span>1년동안
								거래된 상품 </span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="${countC}">0</strong> <span>총
								거래된 상품 </span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="${countM}">0</strong> <span>고객
								가입 수 </span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text d-flex align-items-center">
							<strong class="number" data-number="${countC}">0</strong> <span>지금까지
								필터링된 상품! </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- VARCHAR 통계 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 최신 추가된 차량 슬라이더 시작 -->
	<section class="ftco-section ftco-no-pt bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate mb-5">
					<h2 class="mb-2">라이브 스튜디오 차량</h2>
					<span class="subheading">중고차가 어려운 당신을 위한 VARCHAR 112가지 진단,
						홈서비스까지 한 번에 해결하는 차량</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="carousel-car owl-carousel">
						<koala:recommend />

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 최신 추가된 차량 슬라이더 종료 -->
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<!-- 중앙 하단 로그인,회원가입 안내 박스 시작 -->
	<section class="ftco-section ftco-intro"
		style="background-image: url(images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-end">
				<div
					class="col-md-6 heading-section heading-section-white ftco-animate">
					<h2 class="mb-3">회원가입하고 VARCHAR의&nbsp; 서비스를 편리하게 이용하세요</h2>

					<c:if test="${userId == null}">
						<div class="beMember">
							<a href="login.jsp" class="btn btn-primary btn-lg">로그인 하기</a> <a
								href="signup.jsp" class="btn btn-primary btn-lg">회원 가입하기</a>
						</div>
					</c:if>

				</div>
			</div>
		</div>
	</section>
	<!-- 중앙 하단 로그인,회원가입 안내 박스 종료 -->
	<!-- 최근 추가된 문의 글 3개 시작 -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">문의 게시판</span>
					<h2>고객의 소리</h2>
				</div>
			</div>
			<div class="row d-flex">
				<koala:recentBoard />
			</div>
		</div>
	</section>
	<!-- 최근 추가된 문의 글 3개 종료 -->
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
	<script src="js/cartOpenner.js"></script>
	<script src="js/selectOption.js"></script>

</body>
</html>