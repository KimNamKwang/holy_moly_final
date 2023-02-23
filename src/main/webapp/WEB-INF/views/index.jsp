<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Post</title>
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
    <style>
      .notice1 li:hover {
        display: block;
        transition: all 1s;
        background-color: rgb(55, 210, 67);
      }

      .notice2 li:hover {
        display: block;
        transition: all 1s;
        background-color: rgb(55, 210, 67);
      }

      .notice3 li:hover {
        display: block;
        transition: all 1s;
        background-color: rgb(55, 210, 67);
      }

      .hover:hover {
        outline: 1px solid rgb(55, 210, 67);
        color: rgb(55, 210, 67);
      }

      .color:hover {
        color: rgb(55, 210, 67);
      }

      .test1menu {
        display: none;
      }

      .test1:hover + .test1menu {
        display: block;
      }
    </style>
  </head>

  <body style="height: 1500px">
    <jsp:include page="./navbar.jsp" />
    <!-- main -->
    <div
      class="container d-flex justify-content-center"
      style="width: 1000px; font-family: 'Noto Sans KR', sans-serif"
    >
      <div class="row">
        <div class="col-10">
          <section class="mt-3" style="font-family: 'Noto Sans KR', sans-serif">
            <ul class="d-flex list-unstyled">
              <li class="fs-2 fw-bold pe-4" id="menus_first">
                <a href="#" class="text-decoration-none text-dark">
                  예약하기
                </a>
              </li>
              <!-- 이 부분은 예약하기 누르면 아래 이용안내의 메뉴들 hidden, 이용안내 누르면
              예약하기 메뉴들 hidden + 애니메이션 효과 -->
              <li class="fs-2 fw-bold" id="menus_second" style="opacity: 0.5">
                <a href="#" class="text-decoration-none text-dark">
                  이용안내
                </a>
              </li>
            </ul>
          </section>
          <!-- 예약하기 -->
          <section
            class="d-flex justify-content-center"
            style="margin-top: 30px; padding-bottom: 40px; width: 1160px"
          >
            <div class="row" id="menu_icons_first">
              <div class="col">
                <a
                  href="/home/termsForHome"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                    id="home1"
                  >
                    <div>
                      <img
                        src="/images/홈.png"
                        style="width: 60px; height: 60px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 mt-2 fw-bold">방문택배접수</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>방문일 선택 가능</div>
                      <div>&nbsp;</div>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a
                  href="/home/termsForHomeBulk"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                    id="home2"
                  >
                    <div>
                      <img
                        src="/images/다량택배.png"
                        style="width: 60px; height: 60px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 mt-2 fw-bold">다량접수</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>방문일 선택 가능</div>
                      <div>당일방문</div>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a href="" class="text-dark" style="text-decoration: none">
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                    id="home3"
                  >
                    <div>
                      <img
                        src="/images/왕관.png"
                        style="width: 60px; height: 60px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 mt-2 fw-bold">프리미엄</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>방문시간, 일자 선택 가능</div>
                      <div>당일방문</div>
                    </div>
                  </div>
                </a>
              </div>
            </div>

            <div class="row" id="menu_icons_second" style="display: none">
              <div class="col">
                <a
                  href="/guide/guideHome"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                  >
                    <div>
                      <img
                        src="/images/택배이용안내.png"
                        style="width: 80px; height: 80px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 fw-bold">택배 이용안내</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>택배 종류 별 운임 및 규정,</div>
                      <div>배송과정</div>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a
                  href="/guide/guidePackaging"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                  >
                    <div>
                      <img
                        src="/images/포장안내.png"
                        style="width: 60px; height: 60px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 fw-bold">포장안내</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>물품 포장 박스 규격 및</div>
                      <div>품목별 포장 방법</div>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a
                  href="/guide/guideImpossible"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                  >
                    <div>
                      <img
                        src="/images/이용불가상품.png"
                        style="width: 60px; height: 60px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 mt-2 fw-bold">이용불가 상품</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>접수 불가한 상품</div>
                      <div>&nbsp;</div>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a
                  href="/customer/faqList"
                  class="text-dark"
                  style="text-decoration: none"
                >
                  <div
                    class="hover rounded-circle d-flex flex-column align-items-center justify-content-center"
                    style="
                      width: 200px;
                      height: 200px;
                      background-color: rgb(247, 247, 247);
                    "
                  >
                    <div>
                      <img
                        src="/images/고객센터.png"
                        style="width: 70px; height: 70px"
                        alt=""
                      />
                    </div>
                    <div class="fs-4 fw-bold">고객센터</div>
                    <div
                      class="mt-2 text-center"
                      style="font-size: 0.8rem; color: rgb(147, 149, 143)"
                    >
                      <div>1:1 문의</div>
                      <div>&nbsp;</div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </section>
          <section style="width: 1160px">
            <div class="container">
              <div
                id="carouselId"
                class="carousel slide"
                data-bs-ride="carousel"
              >
                <!-- carousel indicator-->
                <div class="carousel-indicators">
                  <button
                    data-bs-target="#carouselId"
                    data-bs-slide-to="0"
                    class="active"
                    style="
                      width: 10px;
                      height: 10px;
                      border-radius: 50%;
                      margin-right: 10px;
                    "
                  ></button>
                  <button
                    data-bs-target="#carouselId"
                    data-bs-slide-to="1"
                    style="width: 10px; height: 10px; border-radius: 50%"
                  ></button>
                </div>
                <!-- carousel inner-->
                <div class="carousel-inner text-center">
                  <div class="carousel-item active" data-bs-interval="4000">
                    <a
                      href="/event/eventView"
                      class="text-decoration-none text-light"
                    >
                      <img class="h-50" src="/images/캐러셀1.png" alt="dhl" />
                    </a>
                  </div>
                  <div class="carousel-item" data-bs-interval="4000">
                    <a
                      href="/event/eventView"
                      class="text-decoration-none text-light"
                    >
                      <img class="h-50" src="/images/캐러셀2.png" alt="dock" />
                    </a>
                  </div>
                  <button
                    class="carousel-control-prev"
                    data-bs-target="#carouselId"
                    data-bs-slide="prev"
                  >
                    <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button
                    class="carousel-control-next"
                    data-bs-target="#carouselId"
                    data-bs-slide="next"
                  >
                    <span class="carousel-control-next-icon"></span>
                  </button>
                </div>
              </div>
            </div>
          </section>
          <section style="width: 1160px; margin: 5rem 0rem 5rem 0rem">
            <ul class="d-flex list-unstyled justify-content-around text-center">
              <div class="h-75 d-inline-block pt-2">
                <li class="fs-2 fw-bold">공지사항</li>
                <div class="text-start">
                  <a
                    href="/cs/noticeList"
                    class="mt-5 btn btn-outline-dark border rounded-pill"
                  >
                    전체보기
                  </a>
                </div>
              </div>
              <div
                class="d-inline-block col-3"
                style="height: 150px; border-top: 1px solid rgb(55, 210, 67)"
              >
                <div class="notice1">
                  <a
                    href="/cs/noticeView"
                    class="text-decoration-none text-dark"
                  >
                    <li class="text-start p-3">
                      <div style="font-size: 1.1rem">
                        2023년 새.복.많 이벤트
                      </div>
                      <div class="mt-4">23.01.09</div>
                    </li>
                  </a>
                </div>
              </div>
              <div
                class="d-inline-block col-3"
                style="height: 150px; border-top: 1px solid rgb(55, 210, 67)"
              >
                <div class="notice2">
                  <a
                    href="/cs/noticeView"
                    class="text-decoration-none text-dark"
                  >
                    <li class="p-3 text-start">
                      <div style="font-size: 1.1rem">택배 접수 시 주의사항</div>
                      <div class="mt-4">23.01.03</div>
                    </li>
                  </a>
                </div>
              </div>
              <div
                class="d-inline-block col-3"
                style="height: 150px; border-top: 1px solid rgb(55, 210, 67)"
              >
                <div class="notice3">
                  <a
                    href="/cs/noticeView"
                    class="text-decoration-none text-dark"
                  >
                    <li class="text-start p-3" style="font-size: 1.1rem">
                      <div>배송지연 안내</div>
                      <div class="mt-4">22.12.28</div>
                    </li>
                  </a>
                </div>
              </div>
            </ul>
          </section>
        </div>
        <!-- 사이드 바 시작(회원정보) -->
        <div class="col-2">
          <nav class="navbar">
            <a
              href="#collapseID"
              style="font-size: 15px"
              class="navbar-toggler"
              data-bs-toggle="collapse"
              ><span class="navbar-toggler-icon"></span
            ></a>
            <div class="collapse navbar-collapse" id="collapseID">
              <div
                class="card"
                style="
                  width: 15rem;
                  border: 2px solid rgb(171, 171, 171);
                  border-radius: 10px 10px;
                "
              >
                <div class="card-header">
                  <span class="fw-bold fs-4">홍길동</span
                  ><span class="fs-4">님</span>
                  <span style="font-size: 0.9rem">(honggildong)</span>
                </div>
                <div class="card-body">
                  <div>
                    <span style="color: rgb(180, 180, 180); font-size: 0.9rem"
                      >Level</span
                    >
                    <span class="fw-bold fs-5" style="color: rgb(123, 76, 211)"
                      >Family</span
                    >
                  </div>
                  <div
                    class="pt-3 mt-3"
                    style="border-top: 1px solid rgb(203, 203, 203)"
                  >
                    <div>
                      <a href="/mypage/myPoint" style="text-decoration: none">
                        <img src="/images/쿠폰함.png" width="34px" alt="" />
                        <span
                          style="color: rgb(144, 146, 148); font-size: 0.9rem"
                          >포인트</span
                        >
                        <span
                          class="fs-5 fw-bold ps-2"
                          style="color: rgb(55, 210, 67)"
                          >1024P</span
                        >
                      </a>
                    </div>
                    <div>
                      <a
                        href="/customer/inquiryList"
                        style="text-decoration: none"
                      >
                        <img
                          src="/images/내문의현황.png"
                          class="ms-1"
                          width="28px"
                          alt=""
                        />
                        <span
                          style="color: rgb(144, 146, 148); font-size: 0.9rem"
                          >내 문의</span
                        >
                        <span
                          class="fs-5 fw-bold ps-2"
                          style="color: rgb(76, 112, 211)"
                          >1</span
                        >
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
        <!-- 사이드 바 끝(회원정보) -->
      </div>
    </div>
    <!-- 여기까지 main -->
    <jsp:include page="./footer.jsp" />
    <script src="/resources/js/index.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      $(function () {
        $("#home1, #home2, #home3").mouseover(function () {
          $(this).css({
            background: "white",
          });
        });

        $("#home1, #home2, #home3").mouseout(function () {
          $(this).css({
            background: "rgb(247, 247, 247)",
          });
        });
      });
    </script>
  </body>
</html>
