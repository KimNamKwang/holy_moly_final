<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>비밀번호찾기</title>
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
    <link rel="stylesheet" href="/css/join.css" />
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <div class="container" style="width: 600px">
      <div
        class="row mb-5 d-flex align-items-center text-startr"
        style="padding-top: 150px"
      >
        <div class="col-3 d-flex align-items-center">
          <a href="/index" class="navbar-brand">
            <div
              style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)"
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
          비밀번호 찾기
        </div>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="col">
          <span style="text-decoration: line-through; color: rgb(55, 210, 67)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
          </span>
        </div>
      </div>
      <form action="/common/login">
        <div class="d-flex justify-content-center">
          <div
            class="bg-white border text-start w-100"
            style="border-radius: 20px; padding: 50px 100px 50px 100px"
          >
            <div>
              <div class="form-check-label pb-2" style="font-size: 1.15rem">
                회원님의 소중한 개인정보 보호를 위하여<br />
                <span style="color: rgb(55, 210, 67)">본인확인</span>이
                필요합니다.
              </div>
              <br />
              <div class="form-check-label fw-bold pb-2">아이디</div>
              <div>
                <div class="input-group">
                  <input
                    style="height: 50px; border-color: rgb(242, 242, 242)"
                    id="phone"
                    type="text"
                    class="form-control"
                    placeholder="아이디"
                    id="phone"
                  />
                </div>
              </div>

              <div class="form-check-label fw-bold mb-2">휴대폰 번호</div>

              <div class="form-input form-input-ph ph-length6 mb0">
                <div class="auth">
                  <div class="input-group">
                    <input
                      style="height: 50px; border-color: rgb(242, 242, 242)"
                      id="phone"
                      type="text"
                      class="form-control"
                      placeholder="휴대폰 번호"
                      id="phone"
                    />
                  </div>
                  <br />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col mt-3">
            <a
              href="/common/login"
              class="btn btn-sm btn-secondary"
              style="border-radius: 50px"
              >BACK</a
            >
          </div>

          <div class="col text-end mt-3">
            <button
              onclick="doAction()"
              class="btn text-light fw-bold"
              style="background-color: rgb(55, 210, 67)"
            >
              > >
            </button>
          </div>
        </div>
      </form>
    </div>
    <jsp:include page="../footer.jsp" />

    <script>
      function doAction() {
        if (confirm("등록된 이메일주소에 비밀번호를 보내겠습니까?")) {
          alert("전송하였습니다.");

          location.href = "/common/login";
        } else {
          alert("취소하였습니다.");
          location.href = "/common/login";
        }
      }
    </script>
  </body>
</html>
