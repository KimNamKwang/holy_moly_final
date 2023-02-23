<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <jsp:include page="../navbar.jsp" />
    <main class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
      <div class="container" style="width: 600px">
        <form action="/mypage/myinfo">
          <div class="fs-3 fw-bold mb-5 text-center" style="padding-top: 150px">
            비밀번호 재확인
          </div>

          <div class="d-flex justify-content-center">
            <div
              class="bg-white border text-start w-100"
              style="border-radius: 20px; padding: 50px 60px 50px 60px"
            >
              <div>
                <div class="mb-3" style="font-size: 1.1rem">
                  회원님의 소중한 개인정보를 안전하게 보호하기 위해
                  <span style="color: lightgreen">비밀번호</span>를 다시 한번
                  확인합니다.
                </div>
                <div class="form-check-label fw-bold pb-2">아이디</div>
                <div>
                  <input
                    class="form-control form-check-input w-100 mb-2"
                    type="text"
                    name="userId"
                    value="userId123"
                    readonly
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
                    name="userPassword"
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
            </div>
          </div>
          <!-- 버튼 구역 -->
          <div class="text-end mt-3">
            <button
              class="btn btn-lg text-light fw-bold"
              style="
                background-color: rgb(55, 210, 67);
                border-radius: 50%;
                font-size: 1.3rem;
              "
            >
              >
            </button>
          </div>
        </form>
      </div>
      <br /><br /><br /><br />
    </main>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
