<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인</title>
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
    <link rel="stylesheet" href="/resources/css/join.css" />
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <div class="container" style="width: 600px">
      <form class="form-signin" method="post" action="/login">
        <div
          class="row mb-5 d-flex align-items-center text-startr"
          style="padding-top: 150px"
        >
          <div class="col-3 d-flex align-items-center">
            <a href="/index" class="navbar-brand">
              <div
                style="
                  font-family: 'Zen Dots', cursive;
                  color: rgb(76, 183, 86);
                "
              >
                <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
                <span class="material-symbols-outlined fw-bold align-middle">
                  local_shipping
                </span>
              </div>
            </a>
          </div>
          <div
            class="col-2 text-green text-nowrap fs-5 fw-bold d-flex align-items-center"
          >
            로그인
          </div>
          <div class="col">
            <span
              style="text-decoration: line-through; color: rgb(55, 210, 67)"
            >
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp;
            </span>
          </div>
        </div>

        <div class="d-flex justify-content-center">
          <div
            class="bg-white border text-start w-100"
            style="
              border-radius: 20px;
              padding: 50px 100px 50px 100px;
              margin-bottom: 200px;
            "
          >
            <div>
              <div class="form-check-label fw-bold pb-2">아이디</div>
              <div>
                <input
                  class="form-control form-check-input w-100"
                  type="text"
                  name="username"
                  id="username"
                  placeholder="ID"
                  required
                  style="
                    height: 50px;
                    border-radius: 10px 10px;
                    border-color: rgb(242, 242, 242);
                  "
                />
              </div>
            </div>
            <div>
              <div class="form-check-label fw-bold pb-2">비밀번호</div>
              <div>
                <input
                  class="form-control form-check-input w-100"
                  type="password"
                  id="password"
                  name="password"
                  placeholder="PW"
                  required
                  style="
                    height: 50px;
                    border-radius: 10px 10px;
                    border-color: rgb(242, 242, 242);
                  "
                />
              </div>
            </div>
            <div
              class="row text-center pt-4"
              style="font-size: 0.8rem; color: rgb(143, 139, 133)"
            >
              <div class="col border-end">
                <a href="/common/IdSearch" style="text-decoration: none">
                  <span style="color: rgb(143, 139, 133)">
                    아이디 찾기
                  </span></a
                >
              </div>

              <div class="col border-end">
                <a href="/common/PwSearch" style="text-decoration: none">
                  <span style="color: rgb(143, 139, 133)">
                    비밀번호 찾기</span
                  ></a
                >
              </div>

              <div class="col">
                <a href="/common/join_step1" style="text-decoration: none">
                  <span style="color: rgb(143, 139, 133)"> 회원가입</span></a
                >
              </div>
            </div>
            <div class="row text-center pt-4">
              <div class="col d-flex justify-content-center pe-0">
                <a
                  href="/index"
                  class="btn fw-bold d-flex align-items-center justify-content-center"
                  style="
                    width: 150px;
                    height: 45px;
                    border-color: rgb(241, 241, 241);
                    border-radius: 9px 9px;
                  "
                  >비회원으로 이용</a
                >
              </div>
              <div class="col d-flex justify-content-center ps-0">
                <button
                  type="submit"
                  class="btn text-light fw-bold d-flex align-items-center justify-content-center"
                  style="
                    background-color: rgb(55, 210, 67);
                    height: 45px;
                    width: 150px;
                    border-radius: 9px 9px;
                  "
                >
                  로그인
                </button>
              </div>
            </div>
            <div class="text-center pt-4">
              <div style="font-size: 0.8rem; color: rgb(191, 194, 193)">
                *회원가입이나 로그인 없이 비회원 예약이 가능합니다.
              </div>
            </div>
            <div class="pt-3">
              <div class="bg-secondary bg-opacity-50">
                일반 사용자 - id : user1 / password : pw123
              </div>
              <div class="bg-secondary bg-opacity-50">
                관리자 - id : admin1 / password : pw123
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
