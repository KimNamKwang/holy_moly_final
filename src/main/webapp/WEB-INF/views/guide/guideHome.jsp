<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>홈택배 이용안내</title>
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
      <div class="fs-1 fw-bold p-5">홈택배 이용안내</div>
      <ul class="d-flex justify-content-center list-unstyled">
        <li class="fs-3 fw-bold" style="padding-right: 100px">
          <a href="#" id="how_to_use" class="text-decoration-none text-dark">
            이용방법
          </a>
        </li>
        <li
          class="fs-3 fw-bold"
          id="pee_notice"
          style="padding-right: 100px; opacity: 0.5"
        >
          <a href="#" class="text-decoration-none text-dark"> 운임안내 </a>
        </li>
        <li class="fs-3 fw-bold" id="delivery_process" style="opacity: 0.5">
          <a href="#" class="text-decoration-none text-dark"> 배송과정 </a>
        </li>
      </ul>
    </div>
    <div
      class="container-fluid d-flex flex-column justify-content-center pt-5"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <div class="container" style="width: 650px">
        <!-- 이용방법 -->
        <div id="content_how_to_use">
          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">홈택배란?</div>
            <div style="color: rgb(136, 138, 136); font-size: 1.1rem">
              홈택배는 기사가 고객이 원하는 곳에 방문하여 물품을 수거한 후
              배송하는 방문택배 서비스입니다. 프리미엄 홈택배, 다량접수 할인
              홈택배, 일반 홈택배 3가지 중에 선택하여 예약이 가능합니다..
            </div>
          </div>
          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">홈택배 서비스</div>
            <div
              class="pb-3"
              style="font-size: 1.1rem; color: rgb(55, 210, 67)"
            >
              프리미엄 홈택배
            </div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">
                  토요일, 공휴일을 제외한 평일(월~금) 수거, 방문시간/일자 선택
                  가능
                </li>
                <li class="pb-2">13시 이전 접수 건 당일 수거</li>
                <li class="pb-2">
                  수거 업체 사정으로 인해 수거불가능한 지역이 있을 수 있습니다.
                </li>
                <li class="pb-2">제주/도서 수거 불가</li>
                <li class="pb-2">
                  회원 및 비회원으로의 접수가 가능하며, 회원가입 시 다양한 혜택
                  (할인쿠폰, 각종 이벤트 등)을 누릴 수 있습니다.
                </li>
              </ul>
            </div>
            <div
              class="pb-3"
              style="font-size: 1.1rem; color: rgb(55, 210, 67)"
            >
              다량접수 할인 홈택배
            </div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">5박스 이상 예약접수 시 선택 가능</li>
                <li class="pb-2">
                  토요일, 공휴일을 제외한 평일 수거, 방문시간/일자 선택 가능
                  (서울전역 토요일 수거 가능)
                </li>
                <li class="pb-2">13시 이전 접수 건 당일 수거</li>
                <li class="pb-2">
                  수거 업체 사정으로 인해 수거불가능한 지역이 있을 수 있습니다.
                </li>
                <li class="pb-2">제주/도서 수거 불가</li>
                <li class="pb-2">
                  비회원 예약만 가능 (회원 이벤트/ 할인쿠폰 사용 불가)
                </li>
              </ul>
            </div>
            <div
              class="pb-3"
              style="font-size: 1.1rem; color: rgb(55, 210, 67)"
            >
              일반 홈택배
            </div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">
                  토요일, 공휴일을 제외한 평일(월~금) 수거, 방문일자만 선택 가능
                </li>
                <li class="pb-2">
                  영업소, 택배기사의 사정으로 인해 수거 및 배송이 지연될 수
                  있으니, 수거 또는 배송 지연 시 1588-1255 (대한통운)로
                  연락주시기 바랍니다.
                </li>
                <li class="pb-2">방문희망일 익일 선택 마감시간 : 00시</li>
                <li class="pb-2">제주/도서지역 포함 전국 수거 가능</li>
                <li class="pb-2">
                  비회원 예약만 가능 (회원 이벤트/할인쿠폰 사용 불가)
                </li>
              </ul>
            </div>
          </div>
          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">
              이용불가 상품 상세안내
            </div>
            <div style="color: rgb(136, 138, 136); font-size: 1.1rem">
              <div class="pb-3">
                모든 택배 상품들은 내용물을 보호할 수 있도록 박스로 포장되어야
                합니다. 부피가 작은 상품의 경우 운송장보다 큰 소형박스 (15cm x
                8cm 이상)에 재포장하여 접수하셔야 합니다.
              </div>
              <div>
                박스에 포장한 규격은 가로, 세로, 높이의 합이 프리미엄 홈택배의
                경우 100cm, 일반 홈택배의 경우 120cm이고 다량접수 할인 홈택배의
                경우 60cm입니다. 프리미엄 홈택배는 10kg 이하, 일반 홈택배는 15kg
                이하, 다량접수 할인 홈택배는 2kg 이하 상품에 한해 접수
                가능합니다.
              </div>
            </div>
          </div>
          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">손해배상 기준</div>
            <table class="table text-center">
              <thead>
                <tr style="border-top: 1px solid rgb(55, 210, 67)">
                  <td>구분</td>
                  <td>손해 배상 기준 (택배 표준 약관, 20년 6월 5일 개정)</td>
                </tr>
              </thead>
              <tbody style="color: rgb(136, 138, 136); font-size: 0.9rem">
                <tr>
                  <td>손해 배상 기준</td>
                  <td>택배 표준 약관 기준에 의거 배상 (22조)</td>
                </tr>
                <tr>
                  <td>손해 배상 제기 기한</td>
                  <td>
                    수화인이 수령한 날로부터 14일 이내 통지하지 아니하면 책임
                    소면 (제 25조)
                  </td>
                </tr>
                <tr>
                  <td>배상 지급 기일</td>
                  <td>
                    손해 입증 서류를 제출한 날로부터 30일 이내 배상 (22조)
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

        <!-- 운임안내 -->
        <div style="display: none" id="content_pee_notice">
          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">
              프리미엄 홈택배 서비스 이용운임
            </div>
            <table class="table table-borderless text-center borderless">
              <thead>
                <tr style="border-top: 1px solid rgb(55, 210, 67)">
                  <td>무게</td>
                  <td>규격</td>
                  <td>&nbsp;</td>
                  <td class="fw-bold">운임</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>(가로+세로+높이)</td>
                  <td>동일권</td>
                  <td>타권</td>
                  <td>제주권</td>
                </tr>
              </thead>
              <tbody
                style="
                  color: rgb(148, 148, 148);
                  font-size: 0.9rem;
                  border-top: 1px solid rgb(206, 206, 206);
                  border-bottom: 1px solid rgb(206, 206, 206);
                "
              >
                <tr>
                  <td>2kg 이하</td>
                  <td>80cm 이하</td>
                  <td>5,490</td>
                  <td>6,490</td>
                  <td>9,500</td>
                </tr>
                <tr>
                  <td>5kg 이하</td>
                  <td>80cm 이하</td>
                  <td>6,490</td>
                  <td>7,490</td>
                  <td>10,500</td>
                </tr>
                <tr>
                  <td>10kg 이하</td>
                  <td>100cm 이하</td>
                  <td>7,490</td>
                  <td>8,490</td>
                  <td>11,500</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">
              다량접수 할인 홈택배 서비스 이용운임
            </div>
            <table class="table table-borderless text-center borderless">
              <thead>
                <tr style="border-top: 1px solid rgb(55, 210, 67)">
                  <td>무게</td>
                  <td>규격</td>
                  <td>접수건</td>
                  <td>&nbsp;</td>
                  <td class="fw-bold">운임</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>(가로+세로+높이)</td>
                  <td>&nbsp;</td>
                  <td>동일권</td>
                  <td>타권</td>
                  <td>제주권</td>
                </tr>
              </thead>
              <tbody
                style="
                  color: rgb(148, 148, 148);
                  font-size: 0.9rem;
                  border-top: 1px solid rgb(206, 206, 206);
                  border-bottom: 1px solid rgb(206, 206, 206);
                "
              >
                <tr>
                  <td>2kg</td>
                  <td>60cm 이하</td>
                  <td>5박스 이상</td>
                  <td colspan="2">3,290</td>
                  <td>7,290</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div
            class="shadow-sm p-4 mb-4"
            style="border-radius: 10px 10px; background-color: white"
          >
            <div class="pb-3" style="font-size: 1.2rem">
              일반 홈택배 서비스 이용운임
            </div>
            <table class="table table-borderless text-center borderless">
              <thead>
                <tr style="border-top: 1px solid rgb(55, 210, 67)">
                  <td>무게</td>
                  <td>규격</td>
                  <td>&nbsp;</td>
                  <td class="fw-bold">운임</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>(가로+세로+높이)</td>
                  <td>동일권</td>
                  <td>타권</td>
                  <td>제주권</td>
                </tr>
              </thead>
              <tbody
                style="
                  color: rgb(148, 148, 148);
                  font-size: 0.9rem;
                  border-top: 1px solid rgb(206, 206, 206);
                  border-bottom: 1px solid rgb(206, 206, 206);
                "
              >
                <tr>
                  <td>15kg</td>
                  <td>120cm</td>
                  <td colspan="2">6,990</td>
                  <td>10,900</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div
            class="shadow-sm p-4 mb-4"
            style="
              border-radius: 10px 10px;
              background-color: white;
              font-size: 1.1rem;
            "
          >
            <div class="pb-3" style="color: rgb(55, 210, 67)">[유의사항]</div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">
                  무게 10kg 이내의 물건만 접수 가능합니다. (일반 홈택배는
                  15kg이내)
                </li>
                <li class="pb-2">
                  박스 규격은 가로, 세로, 높이 세변의 길이를 합한 것입니다.
                </li>
                <li class="pb-2">
                  한 변의 길이가 100cm가 넘는 물건은 접수 불가합니다.
                </li>
                <li class="pb-2">50만원 초과의 고액 상품은 접수 불가합니다.</li>
                <li class="pb-2">
                  일반 홈택배의 경우 제주 수거는 4,000원 도서지역으로 수거는
                  7,000원 추가됩니다.
                </li>
                <li class="pb-2">착불이 불가합니다. (예약 시 선결제만 가능)</li>
                <li class="pb-2">
                  도서지역은 타권 기준으로 프리미엄 홈택배는 4,000원 추가, 일반
                  홈택배는 7,000원이 추가됩니다.
                </li>
                <li class="pb-2">
                  다음과 같은 경우 고객의 귀책으로 현장에서 수거 거부될 수
                  있습니다. (취급불가상품, 포장불량 혹은 무게/규격초과 등)
                </li>
              </ul>
            </div>
          </div>

          <div
            class="shadow-sm p-4 mb-4"
            style="
              border-radius: 10px 10px;
              background-color: white;
              font-size: 1.1rem;
            "
          >
            <div class="pb-3" style="color: rgb(55, 210, 67)">
              [프리미엄 홈택배 추가유의사항]
            </div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">
                  무게와 규격 중 1개라도 초과 시 실제 무게와 규격에 맞는
                  금액으로 할증이 발생됩니다.
                </li>
                <li class="pb-2">
                  고객의 귀책으로 수거 실패 (취급불가상품, 포장불량 혹은 무게,
                  규격 초과 등) 시 취소 수수료 (1,000원)가 부과됩니다.
                </li>
                <li class="pb-2">
                  무게측정 시 10kg가 초과되는 상품은 고객님께 반품처리되며,
                  1,000원의 반품 수수료가 발생합니다.
                </li>
              </ul>
            </div>
          </div>

          <div
            class="shadow-sm p-4 mb-4"
            style="
              border-radius: 10px 10px;
              background-color: white;
              font-size: 1.1rem;
            "
          >
            <div class="pb-3" style="color: rgb(55, 210, 67)">
              [다량접수 할인 홈택배 추가유의사항]
            </div>
            <div>
              <ul style="color: rgb(136, 138, 136)">
                <li class="pb-2">5박스 이상 예약접수 시 선택 가능합니다.</li>
                <li class="pb-2">
                  2kg 이하 세변의 합이 60cm 이하 대상 물품만 접수 가능합니다.
                </li>
                <li class="pb-2">
                  고객의 귀책으로 수거 실패 (취급불가상품, 포장불량 혹은 무게,
                  규격 초과 등) 시 취소 수수료 (1,000원)가 부과됩니다.
                </li>
                <li class="pb-2">
                  접수하신 무게와 크기 초과 시 집하가 불가하오니 반드시
                  무게/크기를 준수하여 주시기 바랍니다.
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!-- 배송과정 -->
        <div
          class="shadow-sm p-4 mb-4"
          id="content_delivery_process"
          style="
            border-radius: 10px 10px;
            background-color: white;
            display: none;
          "
        >
          <div style="font-size: 1.2rem">홈택배 배송과정</div>
          <div class="text-center">
            <div
              class="btn m-2"
              style="color: white; background-color: rgb(55, 210, 67)"
            >
              예약 완료
            </div>
            <div>↓</div>
            <div
              class="btn m-2"
              style="color: white; background-color: rgb(55, 210, 67)"
            >
              방문 수거
            </div>
            <div>↓</div>
            <div
              class="btn m-2"
              style="color: white; background-color: rgb(55, 210, 67)"
            >
              배송사 집결지
            </div>
            <div>↓</div>
            <div
              class="btn m-2"
              style="color: white; background-color: rgb(55, 174, 210)"
            >
              배송 완료
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script src="/resources/js/guideHome.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
