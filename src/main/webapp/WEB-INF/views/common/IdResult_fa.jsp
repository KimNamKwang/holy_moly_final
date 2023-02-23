<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>택배조회</title>
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

    <!-- 구글폰트 링크 -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
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
    <!-- 큰상자 -->
    <div
      class="container text-nowrap"
      style="font-family: 'Noto Sans KR', sans-serif"
    >
      <div class="d-flex row justify-content-center text-center text-nowrap">
        <div class="d-flex row justify-content-center text-center">
          <div
            class="border p-5"
            style="border-radius: 20px; background-color: white; width: 50%"
          >
            <!-- 그림삽입 저작권침해임 -->
            <div>
              <span class="tracking-list-icon">
                <img src="/resources/images/돋보기.png" alt="" width="40%" />
              </span>
            </div>

            <div class="p-3">
              <b
                ><span style="color: rgb(55, 210, 67)">
                  가입된 계정이 없습니다.</span
                ></b
              ><br />
            </div>

            <div class="col-auto btn-step mb20">
              <a
                href="/common/join_step1"
                class="btn text-light fw-bold text-nowrap"
                style="background-color: rgb(55, 210, 67); width: 150px"
              >
                회원가입
              </a>
            </div>
          </div>
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
