<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>포장안내</title>
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

  <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />

    <div class="container text-center">
      <div class="fs-1 fw-bold p-5">포장안내</div>
      <ul class="d-flex justify-content-center list-unstyled">
        <li class="fs-3 fw-bold" style="padding-right: 100px">
          <a
            href="#"
            id="post_packaging"
            class="text-decoration-none text-dark"
          >
            택배별 포장방법
          </a>
        </li>
        <li class="fs-3 fw-bold" id="item_packaging" style="opacity: 0.5">
          <a href="#" class="text-decoration-none text-dark">
            품목별 포장방법
          </a>
        </li>
      </ul>
    </div>
    <div
      class="container-fluid d-flex flex-column justify-content-center pt-5"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <div class="container" style="width: 650px">
        <!-- 택배별 포장방법 -->
        <div id="content_post_packaging">
          <div
            class="shadow-sm p-4 mt-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div
              class="pb-2 mb-3 fw-bold"
              style="
                font-size: 1.2rem;
                border-bottom: 1px solid rgb(55, 210, 67);
              "
            >
              홈택배
            </div>
            <div style="color: rgb(136, 138, 136)">
              모든 택배 상품은 내용물을 보호할 수 있도록 박스로
              포장되어야합니다. 부피가 작은 상품의 경우
              <span class="fw-bold"
                >운송장보다 큰 소형박스 (15cm x 8cm 이상)</span
              >
              에 재포장하여 접수하셔야 합니다. 박스에 포장한 규격은
              <span style="color: rgb(55, 210, 73)"
                >가로, 세로, 높이의 합이 프리미엄의 경우 100cm, 일반 홈택배의
                경우 120cm</span
              >
              이고
              <span style="color: rgb(55, 210, 73)"
                >다량접수 할인 홈택배의 경우60cm</span
              >
              입니다. 프리미엄 홈택배는
              <span style="color: rgb(55, 210, 73)">10kg 이하</span> , 일반
              홈택배는 <span style="color: rgb(55, 210, 73)">15kg 이하</span>,
              다량접수 할인 홈택배는
              <span style="color: rgb(55, 210, 73)">2kg 이하</span> 상품에 한해
              접수 가능합니다.
            </div>
          </div>
        </div>

        <!-- 품목별 포장방법 -->
        <div id="content_item_packaging" style="display: none">
          <div
            class="shadow-sm p-4 mt-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="row">
              <div class="col-auto">
                <img
                  src="/images/김치.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  김치 및 반찬류
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>
                    김장용 비닐로 2중 이상 포장 후 스티로폼 Box에 담긴 상품.
                  </div>
                  <div class="pt-3" style="font-size: 0.9rem">
                    (단 4~10월 하절기 접수 금지 / 보관 / 밀폐용기, 유리에 담긴
                    음식 지양)
                  </div>
                </div>
              </div>
            </div>
            <div class="row pt-5">
              <div class="col-auto">
                <img
                  src="/images/한약.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  한약류 (파우치 포장)
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>
                    한약전용 Box를 이용한 상품으로 1Box씩 개별접수되는 상품.
                  </div>
                  <div class="pt-3" style="font-size: 0.9rem">
                    (2Box 이상 테이프로 합쳐 포장한 제품, 한약박스 외 일반 박스
                    접수 불가)
                  </div>
                </div>
              </div>
            </div>
            <div class="row pt-5">
              <div class="col-auto">
                <img
                  src="/images/과일.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  과일류
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>
                    2~3일 배송 기일을 감안해도 변질 우려가 없고, 해당박스에
                    포장된 상품 (무르기 쉬운 과일 지양)
                  </div>
                </div>
              </div>
            </div>
            <div class="row pt-5">
              <div class="col-auto">
                <img
                  src="/images/카메라.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  중고 소형 가전류
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>
                    충분한 완충제로 보완된 견고한 Box 또는 최초 Box에 포장된
                    상품으로 흔들었을 때 흔들리지 않게 충분히 완충제가
                    들어있어야함
                  </div>
                  <div class="pt-3" style="font-size: 0.9rem">
                    (파손면책을 동의하신 경우에만 접수가능)
                  </div>
                </div>
              </div>
            </div>
            <div class="row pt-5">
              <div class="col-auto">
                <img
                  src="/images/쌀.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  쌀 등의 곡물류
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>20kg까지 접수 가능하며, Box 포장 필수</div>
                </div>
              </div>
            </div>
            <div class="row pt-5">
              <div class="col-auto">
                <img
                  src="/images/의류.jpg"
                  style="border-radius: 10px 10px"
                  alt=""
                  width="130px"
                />
              </div>
              <div class="col">
                <div class="pb-2 mb-3 fw-bold" style="font-size: 1.2rem">
                  의류
                </div>
                <div style="color: rgb(136, 138, 136)">
                  <div>박스 포장 필수</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script src="/js/guidePackaging.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
