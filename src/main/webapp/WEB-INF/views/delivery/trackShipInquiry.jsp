<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>배송조회</title>
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
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <main
      class="container-fluid d-flex flex-column justify-content-center pt-5"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <div class="container" style="width: 650px">
        <div class="text-center fs-2 fw-bold pb-5">배송조회</div>
        <div class="pb-2 mb-3 fw-bold fs-3" style="color: rgb(55, 210, 67)">
          조회결과
        </div>
        <div
          class="shadow-sm mt-4"
          style="
            border-radius: 10px 10px;
            background-color: white;
            padding: 30px;
          "
        >
          <div class="fs-5 fw-bold" style="color: rgb(55, 210, 67)">
            기본 배송정보
          </div>
          <div class="row mt-4 mb-4">
            <div class="col">
              <span class="fs-5 fw-bold">6335809045</span>
              <span
                class="fw-bold"
                style="
                  background-color: rgb(249, 249, 249);
                  border-radius: 20px;
                  color: rgb(55, 210, 77);
                  padding: 3px 8px 3px 8px;
                "
              >
                배송완료
              </span>
            </div>
            <div class="col text-end" style="color: rgb(165, 166, 165)">
              2023-02-15 09:29
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div class="fw-bold mb-2" style="color: rgb(184, 185, 184)">
                받는 분
              </div>
              <div>
                <span class="fs-4 fw-bold">이은*</span>
                <span
                  class="ps-2 ms-4"
                  style="border-left: 1px solid rgb(184, 185, 184)"
                  >의류</span
                >
              </div>
            </div>
            <div class="col-auto">
              <div class="fw-bold mb-2" style="color: rgb(184, 185, 184)">
                보내는 분
              </div>
              <div>
                <span class="fs-4 fw-bold">이은*</span>
                <span
                  class="fw-bold"
                  style="
                    background-color: rgb(249, 249, 249);
                    border-radius: 20px;
                    color: rgb(55, 210, 77);
                    padding: 3px 8px 3px 8px;
                  "
                >
                  <!-- 선불 -->
                </span>
              </div>
            </div>
          </div>
          <div class="fs-5 mt-4 mb-2 fw-bold" style="color: rgb(55, 210, 77)">
            배송상태
          </div>
          <div style="color: rgb(184, 185, 184)">
            고객님의 개인정보 보호를 위하여 일부 *표 처리 하였습니다.
          </div>
          <div
            class="p-4 mt-4"
            style="
              border: 1px solid rgb(201, 201, 201);
              border-radius: 15px 15px;
            "
          >
            <div
              class="row"
              style="color: rgb(184, 185, 184); padding-left: 10px"
            >
              <div class="col d-flex flex-column justify-content-center">
                <div
                  class="rounded-circle d-flex flex-column align-items-center justify-content-center"
                  style="
                    width: 80px;
                    height: 80px;
                    background-color: rgb(247, 247, 247);
                  "
                >
                  <div>
                    <img
                      src="/resources/images/접수완료.png"
                      style="width: 44px; height: 44px"
                      alt=""
                    />
                  </div>
                </div>
                <div class="text-center pt-2">접수완료</div>
              </div>
              <div class="col-auto d-flex align-items-center">></div>
              <div class="col">
                <div
                  class="rounded-circle d-flex flex-column align-items-center justify-content-center"
                  style="
                    width: 80px;
                    height: 80px;
                    background-color: rgb(247, 247, 247);
                  "
                >
                  <div>
                    <img
                      src="/resources/images/배송중.png"
                      style="width: 45px; height: 45px"
                      alt=""
                    />
                  </div>
                </div>
                <div class="text-center pt-2">수거완료</div>
              </div>
              <div class="col-auto d-flex align-items-center">></div>
              <div class="col">
                <div
                  class="rounded-circle d-flex flex-column align-items-center justify-content-center"
                  style="
                    width: 80px;
                    height: 80px;
                    background-color: rgb(247, 247, 247);
                  "
                >
                  <div>
                    <img
                      src="/resources/images/택배이용안내.png"
                      style="width: 55px; height: 55px"
                      alt=""
                    />
                  </div>
                </div>
                <div class="text-center pt-2">배송중</div>
              </div>
              <div
                class="col-auto d-flex align-items-center"
                style="color: rgb(55, 210, 67)"
              >
                >
              </div>
              <div class="col">
                <div
                  class="rounded-circle d-flex flex-column align-items-center justify-content-center"
                  style="
                    width: 80px;
                    height: 80px;
                    background-color: rgb(227, 253, 174);
                    border: 2px solid rgb(63, 231, 77);
                  "
                >
                  <div>
                    <img
                      src="/resources/images/배송완료.png"
                      style="width: 45px; height: 45px"
                      alt=""
                    />
                  </div>
                </div>
                <div class="text-center pt-2" style="color: rgb(55, 210, 67)">
                  배송완료
                </div>
              </div>
            </div>
          </div>
          <div
            class="row d-flex align-items-center mt-4"
            style="color: rgb(134, 136, 138)"
          >
            <div class="col-auto fw-bold">
              <div>2023-02-15</div>
              <div>11:03</div>
            </div>
            <div class="col-auto">
              <div
                style="
                  background-color: rgb(201, 201, 201);
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "
              ></div>
            </div>
            <div class="col fs-5 fw-bold">택배집하</div>
          </div>
          <div
            class="row d-flex align-items-center mt-5"
            style="color: rgb(134, 136, 138)"
          >
            <div class="col-auto fw-bold">
              <div>2023-02-16</div>
              <div>16:39</div>
            </div>
            <div class="col-auto">
              <div
                style="
                  background-color: rgb(201, 201, 201);
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "
              ></div>
            </div>
            <div class="col fs-5 fw-bold">배송중</div>
          </div>
          <div
            class="row d-flex align-items-center mt-5"
            style="color: rgb(134, 136, 138)"
          >
            <div class="col-auto fw-bold text-dark">
              <div>2022-02-16</div>
              <div>20:39</div>
            </div>
            <div class="col-auto">
              <div
                style="
                  background-color: rgb(55, 210, 77);
                  width: 15px;
                  height: 15px;
                  border-radius: 50%;
                "
              ></div>
            </div>
            <div class="col fs-5 fw-bold" style="color: rgb(55, 210, 77)">
              배송완료
            </div>
          </div>
        </div>
        <div class="mt-4">
          <a
            href="/delivery/trackShipment"
            class="btn btnd-sm"
            style="
              border-radius: 50px;
              color: white;
              background-color: rgb(165, 165, 165);
            "
            >BACK</a
          >
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
