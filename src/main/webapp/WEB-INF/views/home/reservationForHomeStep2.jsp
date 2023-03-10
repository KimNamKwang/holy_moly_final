<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main class="container" style="font-family: 'Noto Sans KR', sans-serif">
      <div class="mt-5">
        <ul class="list-unstyled d-flex justify-content-center">
          <li
            id="reserv_for_home"
            class="pb-4 me-2"
            style="
              border-bottom: 3px solid rgb(55, 210, 67);
              width: 330px;
              text-align: center;
            "
          >
            <a href="#" class="text-decoration-none text-dark fs-5"
              >일반홈택배 예약하기</a
            >
          </li>

          <li
            id="reserv_check_and_cancel"
            class="pb-4 ms-2"
            style="opacity: 0.5; width: 330px; text-align: center"
          >
            <a href="#" class="text-decoration-none text-dark fs-5"
              >예약확인 및 취소</a
            >
          </li>
        </ul>

        <div id="boxForChange" class="mt-5 justify-content-center"></div>
        <div id="agreement_box" class="mt-5">
          <div class="receiver receiver_a" cidx="0">
            <h2 class="mgb_5 fw-bold">받는 사람</h2>
            <form action="/home/reservationForHomeStep3" method="get">
              <table class="table border-top border-3">
                <colgroup>
                  <col style="width: 23%" />
                </colgroup>
                <tbody>
                  <input
                    type="hidden"
                    name="SENDER_NAME"
                    value="${resultMap.SENDER_NAME}"
                  />
                  <input
                    type="hidden"
                    name="SENDER_PHONE"
                    value="${resultMap.phoneFirst}${resultMap.phoneSecond}${resultMap.phoneThird}"
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
                    name="SHIPMENT_PASSWORD"
                    value="${resultMap.SHIPMENT_PASSWORD}"
                  />
                  <input
                    type="hidden"
                    name="SHIPMENT_TYPE_UID"
                    value="SHIP_GEN"
                  />
                  <%-- SHIPMENT_TYPE_UID와 SHIPMENT_TYPE_DESCRIPTION은
                  일반택배라면 하드코딩 고정. --%>
                  <input
                    type="hidden"
                    name="SHIPMENT_TYPE_DESCRIPTION"
                    value="일반 택배"
                  />
                  <tr class="first1">
                    <th scope="row" class="bg-secondary bg-opacity-10">
                      받는 사람
                    </th>
                    <td class="lh_40">
                      <input
                        class="inp04 form-control w-50 inp03"
                        name="RECIPIENT_NAME"
                        type="text"
                        maxlength="7"
                        value=""
                        placeholder="성명/상호명 입력"
                        required
                      />
                    </td>
                  </tr>
                  <tr>
                    <th scope="row" class="bg-secondary bg-opacity-10">
                      연락처
                    </th>
                    <td class="tel_area row">
                      <div class="col-auto">
                        <select
                          class="form-select select_st sel22"
                          name="phoneFirst"
                          id="phoneFirst"
                          required
                        >
                          <option value="010">010</option>
                          <option value="011">011</option>
                          <option value="016">016</option>
                          <option value="017">017</option>
                          <option value="018">018</option>
                          <option value="019">019</option>
                        </select>
                      </div>
                      <div class="col-1">-</div>
                      <div class="col">
                        <input
                          type="tel"
                          class="form-control text-center"
                          id="phoneSecond"
                          name="phoneSecond"
                          maxlength="4"
                          oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                          required
                        />
                      </div>
                      <div class="col-1">-</div>
                      <div class="col">
                        <input
                          type="tel"
                          class="form-control text-center"
                          id="phoneThird"
                          name="phoneThird"
                          maxlength="4"
                          oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                          required
                        />
                      </div>
                    </td>
                  </tr>

                  <!--<tr class="add_phone div_AddPhone" style="display:none;">-->

                  <tr>
                    <th scope="row" class="bg-secondary bg-opacity-10">
                      받는 곳
                    </th>
                    <td>
                      <p class="mgb_5">
                        <input
                          class="form-control w-25"
                          type="button"
                          onclick="sample6_execDaumPostcode()"
                          value="우편번호 찾기"
                        />
                        <input
                          class="form-control w-50 mt-2"
                          type="text"
                          name="DESTINATION_POSTALCODE"
                          id="sample6_postcode"
                          placeholder="우편번호"
                          required
                        />
                        <input
                          class="form-control mt-2"
                          type="text"
                          name="DESTINATION_ADDRESS"
                          class="col-6"
                          id="sample6_address"
                          placeholder="주소"
                          required
                        />
                        <input
                          class="form-control mt-2"
                          type="text"
                          name="DESTINATION_DETAILADDRESS"
                          class="col-10"
                          id="sample6_detailAddress"
                          placeholder="상세주소"
                          required
                        />
                        <input
                          class="form-control mt-2"
                          type="text"
                          name="DESTINATION_EXTRAADDRESS"
                          id="sample6_extraAddress"
                          placeholder="참고항목"
                        />
                      </p>
                    </td>
                  </tr>

                  <tr>
                    <th class="bg-secondary bg-opacity-10">물품종류</th>
                    <td>
                      <select
                        name="ITEM_TYPE_UID"
                        class="form-select w-25"
                        required
                      >
                        <option value="">물품선택</option>
                        <option value="" disabled>농축산물류 ↓</option>
                        <option value="item_f_01">건어물</option>
                        <option value="item_f_02">과일류</option>
                        <option value="item_f_03">쌀</option>
                        <option value="item_f_04">채소류</option>
                        <option value="item_f_05">기타 농축산물류</option>
                        <option value="" disabled>서적류 ↓</option>
                        <option value="item_b_01">서류</option>
                        <option value="item_b_02">서적</option>
                        <option value="item_b_03">인쇄물</option>
                        <option value="item_b_04">기타 서적류</option>
                        <option value="" disabled>약품류 ↓</option>
                        <option value="item_m_01">의약품</option>
                        <option value="item_m_02">한약</option>
                        <option value="item_m_03">건강보조제품</option>
                        <option value="item_m_04">기타 약품류</option>
                        <option value="" disabled>의류/잡화 ↓</option>
                        <option value="item_c_01">의류</option>
                        <option value="item_c_02">신발</option>
                        <option value="item_c_03">가방/지갑</option>
                        <option value="item_c_04">액세서리</option>
                        <option value="item_c_05">기타 의류/잡화류</option>
                      </select>

                      <div class="select_type11">
                        <div class="mt-3">
                          <a
                            name="aNoticeView"
                            href="/guide/guideHome"
                            class="btn btn-outline-dark btn-sm"
                            ><span>유의사항 보기</span></a
                          >
                          <a
                            href="/guide/guideImpossible"
                            class="btn btn-outline-dark btn-sm"
                            ><span>취급제한품목</span></a
                          >
                        </div>
                        <span
                          style="display: none"
                          class="p_kind_table_ajaxcall_yn"
                          >N</span
                        >
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th class="bg-secondary bg-opacity-10">물품단가</th>
                    <td>
                      <div class="row">
                        <div class="col-auto">
                          <input
                            type="Tel"
                            class="inp03 form-control"
                            name="ITEM_PRICE"
                            value=""
                            maxlength="2"
                            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                            required
                          />
                        </div>
                        <div class="col">만원 (수량 : 1개)</div>
                      </div>

                      <p class="ls-1 c_8 tpirce" style="font-size: 0.9rem">
                        * 사고발생 시 보상기준이 되니 실제 물품 금액을
                        입력해주세요. 물품별 최대 금액은 99만원입니다.
                      </p>
                    </td>
                  </tr>

                  <tr>
                    <th colspan="2" class="bg-secondary bg-opacity-10">
                      포장수량선택
                      <span class="f12 fnor c_8">(중복선택 가능)</span>
                    </th>
                  </tr>

                  <tr>
                    <td colspan="2" class="boxsize_wrap">
                      <ul class="boxsize list-unstyled">
                        <li>
                          <p class="tit">
                            <input
                              id="bs_B_0"
                              type="checkbox"
                              value="B"
                              class="chk optTitleB chk_sel form-check-input"
                              required
                            /><label
                              for="bs_B_0"
                              class="optLabelB form-check-label ps-1"
                              >일반박스</label
                            >
                          </p>
                          <p class="f11">15kg이하/ 120cm이하</p>
                        </li>

                        <li class="sum">
                          <p class="tit">총 발송수량</p>
                          <div>
                            <span class="count">
                              <a class="btn" id="minus">-</a>
                              <span id="result">1</span>
                              <a class="btn" id="plus">+</a>
                            </span>
                            <input
                              type="hidden"
                              id="total_count_items"
                              name="NUMBER_OF_ITEMS"
                            />
                          </div>
                        </li>
                      </ul>
                    </td>
                  </tr>

                  <tr class="first1">
                    <th scope="row" class="bg-secondary bg-opacity-10">
                      요청사항
                    </th>

                    <td class="select_100">
                      <select
                        class="select08 w100 etc_info_select form-select w-75"
                        id="etc_info_select_idx_0"
                        name="REQUEST_UID"
                      >
                        <option value="">===선택===</option>

                        <option value="REQ_01">
                          기사님 방문 전 연락주세요
                        </option>
                        <option value="REQ_02">
                          보낼 물품을 문 앞에 놓아 두겠습니다
                        </option>
                        <option value="REQ_03">
                          보낼 물품을 경비실에 맡겨두겠습니다
                        </option>

                        <option value="REQ_04">파손에 주의해 주세요</option>
                        <option value="REQ_05">
                          배송 시 경비실에 맡겨 주세요
                        </option>
                        <option value="REQ_06">
                          배송 시 택배함에 넣어 주세요
                        </option>
                        <option value="REQ_07">
                          배송 시 문앞에 놓아 주세요.
                        </option>
                      </select>
                    </td>
                  </tr>
                </tbody>
              </table>

              <div class="" style="position: relative">
                <h2 class="">예약정보</h2>

                <table class="">
                  <colgroup>
                    <col style="width: 23%" />
                  </colgroup>
                  <tbody>
                    <tr id="">
                      <th scope="row">방문희망일</th>
                      <td>
                        <select
                          name="VISITING_DATE"
                          id="d_req_date_select"
                          class="select01 form-select w-50"
                        ></select>

                        <span style="font-size: 13px"
                          ><br />※ 당일 PM 11시 59분 이후 신청 시 익일자
                          지정불가!</span
                        >
                        <span style="font-size: 13px">
                          <br />※ 영업소, 택배기사의 사정으로 픽업 및 배송이
                          지연될 수 있으며, 집하/배송지연 문의는 택배사
                          고객센터(1000-0110)로 문의해 주시기 바랍니다.
                        </span>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div
                class="d-flex justify-content-center mt-5"
                style="margin-bottom: 70px"
              >
                <a
                  href="/home/reservationForHome"
                  class="btn btn-secondary me-3"
                  style="width: 12rem; height: 3rem; padding-top: 11px"
                >
                  이전단계
                </a>
                <button
                  class="btn me-3 text-light"
                  type="submit"
                  style="
                    width: 12rem;
                    height: 3rem;
                    background-color: rgb(55, 210, 67);
                  "
                >
                  다음단계
                </button>
              </div>
            </form>
          </div>
        </div>
        <form action="/delivery/trackingNumberInquiry" method="get">
          <div
            class="container"
            id="text_for_reserv_check_and_cancel"
            style="display: none"
          >
            <div class="border d-flex" style="height: 10rem">
              <div
                class="align-self-center border-end flex-fill"
                style="text-align: center"
              >
                택배예약 시 등록한
                <span style="color: rgb(55, 210, 67)">보내는분 연락처</span>와
                <div>
                  <span style="color: rgb(55, 210, 67)">비밀번호</span>를 입력해
                  주세요.
                </div>
                예약일 기준 90일 이내 정보에 한하여 조회됩니다.
              </div>
              <div
                class="align-self-center flex-fill"
                style="text-align: center"
              >
                휴대폰번호
                <input
                  type="text"
                  name="SENDER_PHONE"
                  class="ms-4"
                  style="border: 1px solid rgb(204, 204, 204); height: 35px"
                />
                <div class="mt-2">
                  비밀번호 &nbsp;&nbsp;
                  <input
                    type="password"
                    name="SHIPMENT_PASSWORD"
                    class="ms-4"
                    style="border: 1px solid rgb(204, 204, 204); height: 35px"
                  />
                </div>
              </div>
            </div>
            <div class="mt-4" style="text-align: center; margin-bottom: 100px">
              <div class="row d-flex justify-content-center">
                <div class="col text-end">
                  <button
                    type="submit"
                    class="text-light btn"
                    style="
                      background-color: rgb(54, 213, 66);
                      width: 13rem;
                      height: 3rem;
                    "
                  >
                    예약내역 조회
                  </button>
                </div>
                <div class="col text-start">
                  <button
                    type="submit"
                    class="text-light btn"
                    style="
                      background-color: rgb(54, 213, 66);
                      width: 13rem;
                      height: 3rem;
                    "
                  >
                    이용문의
                  </button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script src="/resources/js/termsForHomes.js"></script>
    <script src="/resources/js/reservationForHomeStep2.js"></script>
    <script src="/resources/js/reservationVisitDate.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      function sample6_execDaumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ""; // 주소 변수
            var extraAddr = ""; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === "R") {
              // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
            } else {
              // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === "R") {
              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if (data.buildingName !== "" && data.apartment === "Y") {
                extraAddr +=
                  extraAddr !== ""
                    ? ", " + data.buildingName
                    : data.buildingName;
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if (extraAddr !== "") {
                extraAddr = " (" + extraAddr + ")";
              }
              // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("sample6_extraAddress").value = extraAddr;
            } else {
              document.getElementById("sample6_extraAddress").value = "";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample6_postcode").value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
          },
        }).open();
      }
    </script>
  </body>
</html>
