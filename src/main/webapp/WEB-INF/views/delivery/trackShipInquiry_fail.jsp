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
    <!-- Header 끝 -->

    <!-- body 시작-->
    <main style="font-family: 'Noto Sans KR', sans-serif">
      <div
        class="fs-3 fw-bold d-flex align-items-center justify-content-center"
        style="height: 4rem"
      >
        배송조회
      </div>

      <div class="container">
        <div class="col-auto">
          <br /><br />

          <div class="fs-3 fw-bold text-center">
            <span style="color: rgb(55, 210, 67)"> 조회결과</span>
          </div>

          <div class="d-flex row justify-content-center text-center">
            <div
              class="border p-5"
              style="border-radius: 20px; background-color: white; width: 500px"
            >
              <!-- 그림삽입 저작권침해임 -->
              <div>
                <span class="tracking-list-icon">
                  <img src="/images/없어요.png" alt="" width="150px" />
                </span>
              </div>
              <div class="p-3" style="color: gray">
                <h4>배송조회 결과가 없습니다.</h4>
              </div>
            </div>
          </div>

          <br />

          <div class="fs-3 fw-bold text-center">
            <span style="width: 100px">
              <a
                href="/delivery/trackShipment"
                class="btn text-light"
                style="background-color: #a5a5a5; color: white"
              >
                BACK
              </a>
            </span>
          </div>
        </div>
      </div>
    </main>
    <!-- body 끝-->
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
