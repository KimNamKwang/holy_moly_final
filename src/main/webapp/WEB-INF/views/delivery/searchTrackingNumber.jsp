<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>택배조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <!-- 구글폰트 링크 -->
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main style="font-family: 'Noto Sans KR', sans-serif">
      <div class="fs-3 fw-bold d-flex align-items-center justify-content-center" style="height: 6rem">
        운송장조회
      </div>

      <!-- 큰상자 -->
      <div class="container">
        <div class="d-flex row justify-content-center text-center">
          <div class="border p-4" style="border-radius: 20px; background-color: white; width: 50%">
            <form action="/delivery/trackingNumberInquiry" method="get">
              <input type="text" name="SENDER_PHONE" placeholder="보내시는 분 전화번호" maxlength="20" style="
                  padding: 10px;
                  border-radius: 10px;
                  border: 2px solid rgb(240, 240, 240);
                  width: 80%;
                  margin-right: 46px;
                " />
              <input type="text" name="SHIPMENT_PASSWORD" placeholder="배송 비밀번호" maxlength="20" style="
              padding: 10px;
              border-radius: 10px;
              border: 2px solid rgb(240, 240, 240);
              width: 80%;
             
              " />
              <!-- 버튼 -->
              <button type="submit" style="
                  border-radius: 5px;
                  font-size: 24px;
                  background: white;
                  margin: 2px;
                  border: 2px solid white;
                ">
                <svg width="22" height="40" viewBox="0 0 22 22" fill="none" stroke="currentColor" stroke-width="0"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M10.5 20.75C4.85 20.75 0.25 16.15 0.25 10.5C0.25 4.85 4.85 0.25 10.5 0.25C16.15 0.25 20.75 4.85 20.75 10.5C20.75 16.15 16.15 20.75 10.5 20.75ZM10.5 1.75C5.67 1.75 1.75 5.68 1.75 10.5C1.75 15.32 5.67 19.25 10.5 19.25C15.33 19.25 19.25 15.32 19.25 10.5C19.25 5.68 15.33 1.75 10.5 1.75Z"
                    fill="#282828" />
                  <path
                    d="M21.0004 21.7499C20.8104 21.7499 20.6204 21.6799 20.4704 21.5299L18.4704 19.5299C18.1804 19.2399 18.1804 18.7599 18.4704 18.4699C18.7604 18.1799 19.2404 18.1799 19.5304 18.4699L21.5304 20.4699C21.8204 20.7599 21.8204 21.2399 21.5304 21.5299C21.3804 21.6799 21.1904 21.7499 21.0004 21.7499Z"
                    fill="#282828" />
                </svg>
              </button>
            </form>
          </div>
        </div>

        <div class="d-flex row justify-content-center text-center pt-3 pb-3">
          <div style="color: red">
            *보내시는 분 전화번호와 배송 비밀번호를 정확하게 입력해주세요!
          </div>
        </div>

        <div class="d-flex row justify-content-center text-center" style="margin-bottom: 200px">
          <div class="border p-5" style="border-radius: 20px; background-color: white; width: 50%">
            <div>
              <span class="tracking-list-icon">
                <img src="/resources/images/box.png" alt="" width="30%" />
              </span>
            </div>

            <div class="p-3">로그인 시 더욱 편리하게 이용하실 수 있습니다.</div>

            <div class="row">
              <div class="col">
                <a href="/common/login" class="btn text-light fw-bold" style="
                    background-color: rgb(55, 210, 67);
                    color: rgb(55, 210, 67);
                    width: 150px;
                  ">
                  로그인 하기
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"></script>
  </body>

  </html>