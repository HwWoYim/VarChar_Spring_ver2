🛑프로젝트 : VarChar(반응형 중고차 서비스 웹)🛑

💠타겟 사이트
- 컨 셉 : 현대오토빌
- 크롤링 데이터 추출 : 보배드림

💠개발환경
- FrontEnd : VSCode
- BackEnd : Eclipse
- DBMS : MySQL
- 회의록/자료공유 : Slack
- 버전관리 : Git(SourceTree)
- 회의 : Discord
- 사용 언어 : HTML, CSS, JavaScript, Jquery, Java, Jsp,

💠주 기능
- 필터검색
- 웹소켓을 이용한 실시간 채팅

💠API
- 지도API
- 카카오페이API
- 메일API
- 문자API
- 주소API
- 카카오로그인API

💠이외 기능
- 회원 CRUD
- 자동차 매물 CRUD
- 게시판 CRUD
- 필터검색 페이지/문의게시판 페이지 더보기 기능 비동기 처리
- 모달창을 활용한 찜목록(세션으로만 활용)
- 미디어 쿼리를 적용한 반응형 웹
- 로그인/회원가입 페이지에서 정규표현식을 이용한 유효성검사
- 에러페이지 제작
- 아이디 중복처리
- 이미지 업로드 기능
- 문의 게시판 검색 기능

💠프로젝트 설명
- 기존의 jsp 프로젝트를 Spring 버전으로 이관작업
- 필터기능 Java -> Mybatis 이관작업
- 이메일API를 통한 아이디/비밀번호 찾기
- 회원가입 시 문자 API를 통한 본인 인증
- 작성한 글 전부 삭제, 모두 유지 선택 후 '트랜잭션' 사용하여 회원 탈퇴 구현
- ajax를 통한 데이터 전송처리
- 관리자 권한으로 차량 매물 관리
- 문의 게시판 문의글의 아코디언 플러그인 기능 구현
- 커스텀 태그를 활용한 동일로직 처리
- scope를 통한 세션관리
