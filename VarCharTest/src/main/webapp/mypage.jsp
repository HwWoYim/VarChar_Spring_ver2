<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="koala"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>VARCHAR</title>
 <link rel="shortcut icon" href="./images/vc.ico" >
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link
      href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />
    <link rel="stylesheet" href="css/animate.css" />

    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />

    <link rel="stylesheet" href="css/aos.css" />

    <link rel="stylesheet" href="css/ionicons.min.css" />

    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.timepicker.css" />

    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/icomoon.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/myPage.css" />
  </head>
  <body>
   	<koala:nav/>
    <!-- END nav -->

    <section
      class="hero-wrap hero-wrap-2 js-fullheight"
      style="background-image: url('images/bg_3.jpg')"
      data-stellar-background-ratio="0.5"
    >
      <div class="overlay"></div>
      <div class="container">
        <div
          class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"
        >
          <div class="col-md-9 ftco-animate pb-5">
            <p class="breadcrumbs">
              <span class="mr-2"
                ><a href="index.html"
                  >Home <i class="ion-ios-arrow-forward"></i></a
              ></span>
              <span>MyPage <i class="ion-ios-arrow-forward"></i></span>
            </p>
            <h1 class="mb-3 bread">Info</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-8 block-9 mb-md-5 myInfoContainer">
            <form action="updateM.do" class="bg-light p-5 contact-form" method="POST">
              <h2 class="myInfoTitle">회원 정보 확인 / 변경</h2>
              <div class="myInfoBox">
              
                <div class="myInfo firstColumn">
                  <div class="form-group">
               
                     			

                    <span>이름</span>
                    <input
                      type="text"
                      class="form-control"
                      name= "mname"
                      value="${userInfo.mname}"
                      readonly
                    />
                  </div>
                  <div class="form-group">
                    <span>닉네임</span>
                    <input
                      type="text"
                      class="form-control"
                      name="mnickname"
                      value = "${userInfo.mnickname}"
                      placeholder="닉네임 입력"
                    />
                  </div>
                  <div class="form-group">
                    <span>아이디</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name="mid"
                        value="${userInfo.mid}"
                        readonly
                      />
                    </div>
                    <span>비밀번호</span>
                    <input
                      type="password"
                      class="form-control"
                      name="mpw"
                      value = "${userInfo.mpw}"
                      placeholder="비밀번호 입력"
                    />
                  </div>

                  <!-- <div class="form-group">
                    <textarea
                      name=""
                      id=""
                      cols="30"
                      rows="7"
                      class="form-control"
                      placeholder="Message"
                    ></textarea>
                  </div>  -->
                  <div class="form-group deleteUserBtn">
                    <input
                      readonly
                      type="text"
                      value="회원탈퇴"
                      class="btn btn-primary py-3 px-5"
                      id="deleteUserBtn"
                    />
                  </div>
                  <div id="deleteMsgBox">
                    <p>그동안 작성하신 글은 어떻게 할까요?</p>

                    <div id="deleteMsgBtn">
                      <button name="deleteAll" id="deleteAll" value="deleteAll">전부 삭제</button>
                      <button name="deleteOnlyMsg" id="deleteOnlyMsg" value="deleteOnlyMsg">모두 유지</button>
                      <button name="stopDelete" type="button" id="stopDelete" value="stopDelete">탈퇴 취소</button>
                    </div>

                    <p id="deleteOnlyMsgInfo">
                      '모두 유지'를 선택하면 작성자명은 삭제됩니다.
                    </p>
                  </div>
                </div>

                <div class="myInfo secondColumn">
                  <div class="form-group">
                    <span>전화번호</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "mphone"
                         value = "${userInfo.mphone}"
                        placeholder="전화번호 입력"
                      />
                    </div>
                    <span>주소</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "madd"
                         value = "${userInfo.madd}"
                        placeholder="주소 입력"
                      />
                    </div>
                    <span>이메일</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name = "memail"
                         value = "${userInfo.memail}"
                        placeholder="이메일 입력"
                      />
                    </div>
                    <span>계정 권한</span>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                         name = "mrole"
                        value="${userInfo.mrole}"
                        readonly
                      />
                    </div>
                    <!-- <div class="form-group">
                    <textarea
                      name=""
                      id=""
                      cols="30"
                      rows="7"
                      class="form-control"
                      placeholder="Message"
                    ></textarea>
                  </div> -->
                    <div class="form-group updateUserBtn">
                      <input
                        type="submit"
                        value="확인"
                        class="btn btn-primary py-3 px-5"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

<koala:footer />

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
    <script src="js/deleteUser.js" id="deleteUser" userPw="${userInfo.mpw}"></script>
  </body>
</html>
