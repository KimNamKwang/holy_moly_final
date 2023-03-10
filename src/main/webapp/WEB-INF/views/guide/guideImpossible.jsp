<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>이용불가 상품</title>
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
    <div
      class="container-fluid d-flex flex-column justify-content-center"
      style="background-color: rgb(249, 249, 249)"
    >
      <div class="container" style="width: 600px; padding-bottom: 200px">
        <div class="text-center fs-2 fw-bold mt-5 mb-4">이용불가 상품</div>
        <div
          class="shadow-sm p-4 mb-4"
          style="border-radius: 10px 10px; background-color: white"
        >
          <div style="font-size: 1.2rem">이용불가 상품</div>
          <ul style="color: rgb(136, 138, 136); font-size: 1.1rem">
            <li class="pb-3">
              모든 택배 상품은 내용물을 보호할 수 있도록 포장되어야 합니다.
              부피가 작은 상품의 경우 운송장보다 큰 소형박스 (15cm x 7cm)에
              재포장하여 접수하셔야 합니다.
            </li>
            <li class="pb-3">
              박스에 포장한 규격은 가로, 세로, 높이의 합이 프리미엄, 일반
              홈택배의 경우 120cm 이고 다량접수 할인 홈택배의 경우 60cm입니다.
            </li>
            <li>
              프리미엄 홈택배는 10kg 이하, 일반 홈택배는 15kg 이하, 다량접수
              할인 홈택배는 2kg 이하 상품에 한해 접수 가능합니다.
            </li>
          </ul>
        </div>
        <div
          class="shadow-sm p-4 mb-4 text-center"
          style="border-radius: 10px 10px; background-color: white"
        >
          <div class="row pb-5">
            <div class="col">
              <div>
                <img
                  src="/resources/images/도자기.jpg"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">유리 및 도자기류</div>
            </div>
            <div class="col">
              <div>
                <img
                  src="/resources/images/부패.jpg"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">부패/변질 우려상품</div>
            </div>
            <div class="col">
              <div>
                <img
                  src="/resources/images/포장불량.avif"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">포장불량 상품</div>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div>
                <img
                  src="/resources/images/귀금속.jpg"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">귀금속, 유사증권 현금 등</div>
            </div>
            <div class="col">
              <div>
                <img
                  src="/resources/images/처방약.avif"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">처방약(시한성)</div>
            </div>
            <div class="col">
              <div>
                <img
                  src="/resources/images/액체.avif"
                  alt=""
                  style="border-radius: 15px 15px"
                  width="150px"
                />
              </div>
              <div class="fw-bold pt-3">액체류 (샴푸, 화장품류)</div>
            </div>
          </div>
        </div>
        <div
          class="shadow-sm p-4 mb-4"
          style="border-radius: 10px 10px; background-color: white"
        >
          <div class="pb-3" style="font-size: 1.2rem">기타 접수 금지 상품</div>
          <div>
            <ul style="color: rgb(136, 138, 136); font-size: 1.1rem">
              <li class="pb-2">위험물 : 화약류, 총포류</li>
              <li class="pb-2">인화성, 휘발성 화물 : 난로, 가스통</li>
              <li class="pb-2">
                다른 화물에 피해를 입힐 수 있다고 판단되는 화물
              </li>
              <li class="pb-2">살아있는 동/식물 (애완동물)</li>
              <li class="pb-2">
                포장이 불가하여 제품의 성질이나 외관을 손상시킬 수 있는 화물 :
                타이어 부품류
              </li>
              <li class="pb-2">
                운송도중 또는 운송기일 내 훼손 또는 부패가능성 화물
              </li>
              <li class="pb-2">
                도서지역 (제주도 제외)으로 가는 상품은 착불 서비스가 불가하오며,
                기상상황에 따라 배송기일이 다소 소요(추가 2~5일)될 수 있으므로
                식품류 접수 시 유의하셔야합니다. 또한 도선류 4,000원을
                지불하셔야 합니다.
              </li>
            </ul>
          </div>
        </div>
        <div
          class="shadow-sm p-4"
          style="border-radius: 10px 10px; background-color: white"
        >
          <div class="pb-3" style="font-size: 1.2rem">
            중고 가전제품 접수방법
          </div>
          <ul style="color: rgb(136, 138, 136); font-size: 1.1rem">
            <li class="pb-2">
              공장출하 시 원 Box에 완충제가 보완된 경우 접수 가능(스티로폼으로
              완충된 상품)
            </li>
            <li class="pb-2">일반박스 포장의 상품은 접수가 안됩니다.</li>
            <li class="pb-2">
              중고가전 제품은 배송 시 포장박스에 외부의 충격에 대한 손상이 없는
              경우 내품의 손상에 대하여는 보상되지 않습니다.
            </li>
          </ul>
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
