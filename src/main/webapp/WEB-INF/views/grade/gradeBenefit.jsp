<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>등급별 혜택 안내</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <div
      class="container-fluid d-flex flex-column justify-content-center"
      style="
        z-index: 1;
        font-family: 'Noto Sans KR', sans-serif;
        background-color: rgb(249, 249, 249);
        padding-bottom: 200px;
      "
    >
      <div class="container" style="width: 650px">
        <div class="fs-2 fw-bold text-center pt-5 pb-4">등급별 혜택</div>
        <div
          class="shadow-sm mb-4"
          style="
            border-radius: 10px 10px;
            background-color: white;
            color: rgb(136, 138, 136);
            font-size: 1.1rem;
            padding: 35px 35px 35px 35px;
          "
        >
          <div class="row">
            <div
              class="col-3 position-relative fs-4 text-dark fw-bold pb-3"
              style="z-index: 1"
            >
              <span
                class="position-absolute translate-middle p-2 rounded-circle"
                style="
                  background-color: rgb(180, 180, 180);
                  top: 9px;
                  left: 11px;
                  z-index: -1;
                "
              ></span
              >PLATINUM
            </div>
            <div class="col">
              <ul>
                <li>PLATINUM 전용 운임 제공</li>
                <li>등급 전용 이벤트</li>
                <li>반품 서비스 제공</li>
                <li>SMS / 알림톡 무료 발송</li>
              </ul>
            </div>
            <div class="col-auto">
              <div style="color: rgb(55, 210, 67)">승급 조건</div>
              <div>전월 실적 200건 이상</div>
            </div>
          </div>

          <hr class="pt-3" />

          <div class="row">
            <div
              class="col-3 position-relative fs-4 text-dark fw-bold pb-3"
              style="z-index: 1"
            >
              <span
                class="position-absolute translate-middle p-2 rounded-circle"
                style="
                  background-color: rgb(201, 209, 108);
                  top: 9px;
                  left: 11px;
                  z-index: -1;
                "
              ></span
              >VVIP
            </div>
            <div class="col">
              <ul>
                <li>VVIP 전용 운임 제공</li>
                <li>등급 전용 이벤트</li>
                <li>반품 서비스 제공</li>
                <li>SMS / 알림톡 무료 발송</li>
              </ul>
            </div>
            <div class="col-auto">
              <div style="color: rgb(55, 210, 67)">승급 조건</div>
              <div>전월 실적 100건 이상</div>
            </div>
          </div>

          <hr class="pt-3" />

          <div class="row">
            <div
              class="col-3 position-relative fs-4 text-dark fw-bold pb-3"
              style="z-index: 1"
            >
              <span
                class="position-absolute translate-middle p-2 rounded-circle"
                style="
                  background-color: rgb(250, 180, 129);
                  top: 9px;
                  left: 11px;
                  z-index: -1;
                "
              ></span
              >VIP
            </div>
            <div class="col">
              <ul>
                <li>VIP 전용 운임 제공</li>
                <li>등급 전용 이벤트</li>
                <li>반품 서비스 제공</li>
                <li>SMS / 알림톡 무료 발송</li>
              </ul>
            </div>
            <div class="col-auto">
              <div style="color: rgb(55, 210, 67)">승급 조건</div>
              <div>전월 실적 30건 이상</div>
            </div>
          </div>

          <hr class="pt-3" />

          <div class="row">
            <div
              class="col-3 position-relative fs-4 text-dark fw-bold pb-3"
              style="z-index: 1"
            >
              <span
                class="position-absolute translate-middle p-2 rounded-circle"
                style="
                  background-color: rgb(177, 139, 248);
                  top: 9px;
                  left: 11px;
                  z-index: -1;
                "
              ></span
              >PURPLE
            </div>
            <div class="col">
              <ul>
                <li>PURPLE 전용 운임 제공</li>
                <li>등급 전용 이벤트</li>
                <li>반품 서비스 제공</li>
                <li>SMS / 알림톡 무료 발송</li>
              </ul>
            </div>
            <div class="col-auto">
              <div style="color: rgb(55, 210, 67)">승급 조건</div>
              <div>사업자 번호 인증 시</div>
            </div>
          </div>

          <hr class="pt-3" />

          <div class="row">
            <div
              class="col-3 position-relative fs-4 text-dark fw-bold pb-3"
              style="z-index: 1"
            >
              <span
                class="position-absolute translate-middle p-2 rounded-circle"
                style="
                  background-color: rgb(179, 216, 243);
                  top: 9px;
                  left: 11px;
                  z-index: -1;
                "
              ></span
              >FAMILY
            </div>
            <div class="col">
              <ul>
                <li>예약 시 할인쿠폰 제공</li>
                <li>회원 이벤트 제공</li>
                <li>전용 문의 게시판</li>
              </ul>
            </div>
            <div class="col-auto">
              <div>&nbsp;</div>
            </div>
          </div>
        </div>
        <div class="text-center">
          <a
            href="/common/join_step1"
            class="btn text-light fw-bold"
            style="
              background-color: rgb(55, 210, 67);
              border-radius: 11px 11px;
              width: 150px;
            "
            >서비스 회원가입</a
          >
        </div>
      </div>
    </div>

    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
