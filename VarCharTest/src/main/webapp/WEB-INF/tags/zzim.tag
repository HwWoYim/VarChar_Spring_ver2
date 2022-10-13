<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 찜 목록 -->
<div class="cartOpenner">
   <strong>Cart</strong>
</div>
<div class="cartContainer">
   <c:choose>
      <c:when test="${userId!=null}">
         <h2 class="cartTitle">${userId}님</h2>
      </c:when>
      <c:otherwise>
         <h2 class="cartTitle">Cart</h2>
      </c:otherwise>
   </c:choose>
   <!-- ------------------------------------------------------------------------ -->
   <hr />
   <!-- 여기서 부터 장바구니 리스트 -->
   <div class="scrollAttach">
      <c:forEach var="c" items="${sdatas}">
         <!-- 상담 예약이면 0으로변환 -->
         <c:choose>
            <c:when test="${c.cprice < 400000}">
               <c:set var="total" value="${total + c.cprice}" />
            </c:when>
            <c:otherwise>
               <c:set var="total" value="${total + 0}" />
            </c:otherwise>
         </c:choose>


         <div class="cartItem">
            <div class="itemPhoto"
               style="background: url('${c.cimg}') no-repeat center center; background-size:contain;"></div>
            <div class="itemInfo">
               <a href="detail.do?cnum=${c.cnum}" class="itemTitle">${c.ctitle}</a>

               <span>연식 : ${c.cyear}</span> <span>연료 : ${c.cfuel}</span> <span>주행거리
                  : ${c.ckm}km</span> <span>지역 : ${c.ccity}</span> <span>가격 : <c:choose>
                     <c:when test="${c.cprice >= 400000}">
                    상담예약
                 </c:when>
                     <c:otherwise>
                 ${c.cprice}만원
                 </c:otherwise>
                  </c:choose>
               </span>
               <div id="contract">
                  <span id="contractSpan">계약하기</span>
                  <button id="kakaoPayBtn" type="button" onclick="requestPay('${c.ctitle}')">
                     <img src="images/payment_icon_yellow_small.png">
                  </button>
                  </div>
                  <a href="storeR.do?cnum=${c.cnum}" class="deleteItem">[삭제]</a>
               </div>
         </div>
         <hr />
      </c:forEach>
      <!-- 상품 리스트 끝============================ -->


      <div class="cartBottom">
         <div class="totalPrice">
            <span>총 상품 금액</span> <strong>${total}만원</strong>
         </div>
         <div class="cartBtn">
            <c:if test="${userId != null}">
               <c:if test="${loginType==null}">
                  <button class="cartMypageBtn" onclick="location.href='mypage.do';">
                     My Page</button>
               </c:if>
            </c:if>
            <c:if test="${userId == null}">
               <div class="nonLoginCartBtns">
                  <button class="cartLoginBtn" onclick="location.href='login.jsp';">
                     Login</button>
                  <button class="cartSignupBtn"
                     onclick="location.href='signup.jsp';">Sign up</button>
               </div>
            </c:if>
            <button class="cartCloser">Close Cart</button>
         </div>
      </div>


   </div>
   <!-- 
      <div class="cartBtn">
      
      <button class="cartCloser">Close Cart</button>
         </div>
         -->

</div>


<!-- jQuery CDN == jQuery를 사용하기 위한 준비(네트워크가 연결되어 있어야 한다.) -->
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js == 아임포트 결제모듈 연동 역할 -->
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
        var IMP = window.IMP;  // 팝업창
        /* IMP.init("imp67011510"); */
        IMP.init("imp34821474");// 아임포트 가맹점 식별코드
      
        var today = new Date(); //일 
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds(); //밀리초
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;

        function requestPay(itemName) { 
         console.log(itemName);
            IMP.request_pay({ //요청하는 것들
                pg : 'kakaopay', //카카오페이 API래핑
                /*                 'kakao':카카오페이,           
            html5_inicis':이니시스(웹표준결제)                 
            'nice':나이스페이                  
            'jtnet':제이티넷   
            'uplus':LG유플러스             
            'danal':다날             
            'payco':페이코             
            'syrup':시럽페이              
            'paypal':페이팔              
             */
             /* pay_method : 'card', */
               /*               
               'samsung':삼성페이,  
               'card':신용카드,          
               'trans':실시간계좌이체,            
               'vbank':가상계좌,            
               'phone':휴대폰소액결제          
                */
                merchant_uid: "IMP"+makeMerchantUid,  // 상점에서관리하는 상품번호
                name : itemName, //상품명
                amount : 500000, //가격
                buyer_email : 'Iamport@chai.finance', //구매자 이메일
                buyer_name : '아임포트 기술지원팀', //구매자 이름
                buyer_tel : '010-1234-5678', //구매자 번호
                buyer_addr : '서울특별시 강남구 삼성동', //구매자 주소 
                buyer_postcode : '123-456'
                /* m_redirect_url : 'https://www.yourdomain.com/payments/complete' */
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                    var msg = '결제가 완료되었습니다.\n';
               msg += '고유ID : ' + rsp.imp_uid+"\n";
               msg += '상점 거래ID : ' + rsp.merchant_uid+"\n";
               msg += '결제 금액 : ' + rsp.paid_amount+'원\n';
               msg += '카드 승인번호 : ' + rsp.apply_num;
                } else {
                    console.log(rsp);
                    var msg = '결제에 실패하였습니다.\n';
               msg += '에러내용 : ' + rsp.error_msg;
                }
                alert(msg);
            });
        }
    </script>