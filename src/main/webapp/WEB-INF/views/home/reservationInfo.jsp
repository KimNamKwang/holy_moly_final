<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
    <style>
      input:focus,
      select:focus {
        outline: 1px solid rgb(55, 210, 67);
      }

      label {
        color: rgb(128, 128, 128);
      }
    </style>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main style="font-family: 'Noto Sans KR', sans-serif">
      <div
        class="container-fluid"
        style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
      >
        <div class="container d-flex justify-content-center">
          <form action="/home/reservationinfoStep2" method="get">
            <div class="mt-5" style="width: 650px">
              <h2 class="fw-bold text-center">프리미엄 홈택배 예약</h2>
              <div class="row">
                <div
                  class="col fs-4 fw-bold pb-2 mb-4 pt-3"
                  style="
                    color: rgb(55, 210, 67);
                    border-bottom: 1px solid rgb(55, 210, 67);
                  "
                >
                  예약정보
                </div>
                <div
                  class="col pb-2 mb-4 pt-3"
                  style="border-bottom: 1px solid rgb(55, 210, 67)"
                >
                  &nbsp;
                </div>
                <div
                  class="col pb-2 mb-4 pt-3"
                  style="border-bottom: 1px solid rgb(55, 210, 67)"
                >
                  &nbsp;
                </div>
                <div
                  class="col pb-2 mb-4 pt-3"
                  style="border-bottom: 1px solid rgb(210, 241, 212)"
                >
                  &nbsp;
                </div>
                <div
                  class="col pb-2 mb-4 pt-3"
                  style="border-bottom: 1px solid rgb(210, 241, 212)"
                >
                  &nbsp;
                </div>
              </div>
              <div
                class="shadow-sm p-4"
                style="border-radius: 15px 15px; background-color: white"
              >
                <div
                  class="p-2"
                  style="
                    background-color: rgb(249, 255, 235);
                    color: rgb(55, 210, 67);
                    font-size: 0.9rem;
                    border-radius: 10px 10px;
                  "
                >
                  <ul class="mb-0">
                    <li>
                      아래의 시간표에서 [기사방문시간]을 선택할 수 있습니다.
                    </li>
                    <li class="pt-2">
                      <div>
                        선택한 시간에 맞춰 집하기사가 방문하며, 고객님께 출발 전
                        전화 및 알림메시지를 보내드릴 예정입니다.
                      </div>
                      <div>(홈택배 운임은 하단의 운임표를 참조바랍니다.)</div>
                    </li>
                  </ul>
                </div>
                <div class="fs-5 fw-bold pt-4 pb-3">방문 희망일시</div>
                <table
                  class="table table-borderless text-center"
                  style="
                    border: 1px solid rgb(241, 241, 241);
                    border-left: none;
                    border-right: none;
                  "
                >
                <input
                    type="hidden"
                    name="SENDER_NAME"
                    value="${resultMap.SENDER_NAME}"
                />
                <input
                    type="hidden"
                    name="SENDER_PHONE"
                    value="${resultMap.SENDER_PHONE}"
                />
                <input
                    type="hidden"
                    name="DEPARTURE_POSTALCODE"
                    value="${resultMap.DEPARTURE_POSTALCODE}"
                />
                <input
                    type="hidden"
                    name="DEPARTURE_ADDRESS"
                    value="${resultMap.DEPARTURE_ADDRESS}"
                />
                <input
                    type="hidden"
                    name="DEPARTURE_DETAILADDRESS"
                    value="${resultMap.DEPARTURE_DETAILADDRESS}"
                />
                <input
                    type="hidden"
                    name="DEPARTURE_EXTRAADDRESS"
                    value="${resultMap.DEPARTURE_EXTRAADDRESS}"
                />
                <input
                    type="hidden"
                    name="RECIPIENT_NAME"
                    value="${resultMap.RECIPIENT_NAME}"
                />
                <input
                  type="hidden"
                  name="RECIPIENT_PHONE"
                  value="${resultMap.RECIPIENT_PHONE}"
                />
                <input
                  type="hidden"
                  name="DESTINATION_POSTALCODE"
                  value="${resultMap.DESTINATION_POSTALCODE}"
                />
                <input
                  type="hidden"
                  name="DESTINATION_ADDRESS"
                  value="${resultMap.DESTINATION_ADDRESS}"
                />
                <input
                  type="hidden"
                  name="DESTINATION_DETAILADDRESS"
                  value="${resultMap.DESTINATION_DETAILADDRESS}"
                />
                <input
                  type="hidden"
                  name="DESTINATION_EXTRAADDRESS"
                  value="${resultMap.DESTINATION_EXTRAADDRESS}"
                />
                <input
                type="hidden"
                name="SHIPMENT_TYPE_DESCRIPTION"
                value="프리미엄 택배"
                />
                <input
                  type="hidden"
                  name="REQUEST_UID"
                  value="${resultMap.REQUEST_UID}"
                />
                <input
                type="hidden"
                name="ITEM_TYPE_UID"
                value="${resultMap.ITEM_TYPE_UID}"
                />
                <input
                type="hidden"
                name="ITEM_PRICE"
                value="${resultMap.ITEM_PRICE}"
                />
                <input
                type="hidden"
                name="NUMBER_OF_ITEMS"
                value="${resultMap.NUMBER_OF_ITEMS}"
                />
                  <!-- <thead>
                    <tr id="visit_date">
                      <th>방문시간</th>
                    </tr>
                  </thead> -->
                  <tbody>
                    <input type="date" name="VISITING_DATE" />
                    <!-- <tr>
                      <th>09:00~11:00</th>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_1_1"
                          value="2023-02-22 14:20:47"
                        />
                        <label class="form-check-label" for="visit-time_1_1"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_1_2"
                        />
                        <label class="form-check-label" for="visit-time_1_2"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_1_3"
                        />
                        <label class="form-check-label" for="visit-time_1_3"
                          >신청</label
                        >
                      </td>
                    </tr>
                    <tr>
                      <th>11:00~13:00</th>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_2_1"
                        />
                        <label class="form-check-label" for="visit-time_2_1"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_2_2"
                        />
                        <label class="form-check-label" for="visit-time_2_2"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_2_3"
                        />
                        <label class="form-check-label" for="visit-time_2_3"
                          >신청</label
                        >
                      </td>
                    </tr>
                    <tr>
                      <th>13:00~15:00</th>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_3_1"
                        />
                        <label class="form-check-label" for="visit-time_3_1"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_3_2"
                        />
                        <label class="form-check-label" for="visit-time_3_2"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_3_3"
                        />
                        <label class="form-check-label" for="visit-time_3_3"
                          >신청</label
                        >
                      </td>
                    </tr>
                    <tr>
                      <th>15:00~17:00</th>
                      <td class="pb-4">
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_4_1"
                        />
                        <label class="form-check-label" for="visit-time_4_1"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_4_2"
                        />
                        <label class="form-check-label" for="visit-time_4_2"
                          >신청</label
                        >
                      </td>
                      <td>
                        <input
                          class="form-check-input"
                          style="zoom: 1.2"
                          type="radio"
                          name="visit-time-select"
                          id="visit-time_4_3"
                        />
                        <label class="form-check-label" for="visit-time_4_3"
                          >신청</label
                        >
                      </td>
                    </tr> -->
                  </tbody>
                </table>
                <div class="fs-5 fw-bold pt-3 pb-3">홈택배 운임표</div>
                <table
                  class="table table-borderless text-center"
                  style="
                    border: 1px solid rgb(241, 241, 241);
                    border-left: none;
                    border-right: none;
                  "
                >
                  <thead>
                    <tr>
                      <th>구분</th>
                      <th>무게/규격</th>
                      <th>동일권</th>
                      <th>타권</th>
                      <th>제주권</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th>초소형</th>
                      <td>2kg/80cm</td>
                      <td style="color: rgb(55, 210, 67)">5,490원</td>
                      <td style="color: rgb(55, 210, 67)">6,490원</td>
                      <td style="color: rgb(55, 210, 67)">9,500원</td>
                    </tr>
                    <tr>
                      <th>소형</th>
                      <td>5kg/80cm</td>
                      <td style="color: rgb(55, 210, 67)">6,490원</td>
                      <td style="color: rgb(55, 210, 67)">7,490원</td>
                      <td style="color: rgb(55, 210, 67)">10,500원</td>
                    </tr>
                    <tr>
                      <th>중형</th>
                      <td class="pb-4">10kg/100cm</td>
                      <td style="color: rgb(55, 210, 67)">7,490원</td>
                      <td style="color: rgb(55, 210, 67)">8,490원</td>
                      <td style="color: rgb(55, 210, 67)">11,500원</td>
                    </tr>
                  </tbody>
                </table>
                <div class="fw-bold pt-2 pb-5" style="color: rgb(255, 73, 139)">
                  *도서지역은 4,000원이 추가됩니다.
                </div>
                <div
                  class="p-3"
                  style="
                    background-color: rgb(242, 255, 216);
                    border: 1px solid rgb(55, 210, 67);
                    border-radius: 10px 10px;
                    font-size: 0.9rem;
                  "
                >
                  <div style="color: rgb(151, 150, 148)">
                    ※ 무게와 박스크기 중
                    <span class="fw-bold" style="color: rgb(55, 210, 67)"
                      >1가지 이상</span
                    >규격초과시 할증이 부과되며 할증요금은 물품 집하 후
                    신용카드/휴대폰으로 결제 가능합니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 10kg/100cm 초과 시 현장에서 집하가 거부될 수 있습니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 박스 크기가 운송장(15X7cm) 보다 작은 경우 집하 불가합니다.
                  </div>
                  <div class="fw-bold pt-1" style="color: rgb(55, 210, 67)">
                    ※ 예약취소는 방문희망 당일 오전 7:30분까지 가능합니다. 만약
                    물품을 발송하지 못하시는 경우는 집하실패 후 영업일 기준
                    다음날 일괄적으로 예약취소처리됩니다.(당일 취소로 인한
                    방문수수료 1,000원이 부과될 수 있습니다.)
                  </div>
                  <div class="fw-bold pt-1" style="color: rgb(55, 210, 67)">
                    ※ 당일취소/규격초과/고객부재 등 고객님 사유로 인한
                    집하실패(집하거부)시 예약건당 1,000원이 방문수수료로
                    차감됩니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 물품무게는 거점인 편의점 무인택배기 전자저울에서 측정되어
                    최종확정됩니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 거점 접수 시 10kg 초과 물품은 추가할증이 발생됩니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※
                    <span class="fw-bold" style="color: rgb(55, 210, 67)"
                      >20kg 초과물품</span
                    >은 배송불가 물품으로 송하인에게 자동 반품처리 되며,
                    <span class="fw-bold" style="color: rgb(55, 210, 67)"
                      >반품수수료(1,000원)가 차감</span
                    >됩니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 집하 관련 문의는 로지아이 고객센터로, 거점입고 이후
                    배송관련 관련된 문의는 CJ대한통운 택배 1577-1287을 이용해
                    주시기 바랍니다.
                  </div>
                  <div class="pt-1" style="color: rgb(151, 150, 148)">
                    ※ 급작스러운 기상이변 등의 상황 발생 시 방문이 다소 지체될
                    수 있으며, 운행이 불가한 경우 다른 날짜/시간대 예약안내
                    진행이나 예약취소 처리가 될 수 있는 점 참고 부탁드립니다.
                  </div>
                  <div class="fw-bold pt-1" style="color: rgb(55, 210, 67)">
                    ※ 17시 이후 수거된 물품은 거점 계류되어 배송이 지연될 수
                    있습니다.
                  </div>
                </div>
                <div class="row pt-5 pb-4">
                  <div class="col-auto fw-bold">물품 전달방식</div>
                  <div class="col fw-bold">
                    <select
                      class="w-100 border border-secondary border-opacity-10 p-3 text-center fw-bold"
                      style="border-radius: 10px"
                      name="receive-type"
                      id=""
                      required
                    >
                      <option name="REQUEST_UID" selected disabled>
                        품목 전달방식 선택
                      </option>
                      <option value="REQ_08">
                        집하기사님께 직접 전달하겠습니다.
                      </option>
                      <option value="REQ_02">
                        부재중으로 현관문 앞에 두겠습니다.
                      </option>
                      <option value="REQ_03">
                        부재중으로 아파트 경비실에 맡겨 놓겠습니다.
                      </option>
                      <option value="REQ_09">
                        부재중으로 무인택배함에 맡겨 놓겠습니다.
                      </option>
                      <option value="REQ_01">
                        부재중으로 기사님 도착하시면 전화주세요.
                      </option>
                    </select>
                  </div>
                </div>
                <div class="row">
                <div class="col-2 fw-bold">비밀번호</div>
                <div class="col">
                  <input
                    class="form-control w-50"
                    name="SHIPMENT_PASSWORD"
                    type="password"
                    value=""
                    maxlength="4"
                    placeholder="숫자 4자리를 입력해 주세요."
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                    required
                  />

                  <p
                    class="c_red pdt_10"
                    style="color: rgb(255, 80, 123); font-size: 0.9rem"
                  >
                    * 비밀번호 분실 시 예약조회 불가, 꼭 기억해주세요.
                  </p>
                </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col mt-3">
                <a
                  href="javascript:window.history.back();"
                  class="btn btn-sm"
                  style="
                    border-radius: 50px;
                    background-color: rgb(165, 165, 165);
                    color: white;
                  "
                  >BACK</a
                >
              </div>
              <div class="col text-end mt-3">
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
            </div>
          </form>
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script src="/resources/js/reservationInfo.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
