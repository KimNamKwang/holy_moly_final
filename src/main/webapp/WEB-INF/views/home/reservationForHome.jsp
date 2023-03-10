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
      </div>

      <div id="boxForChange" class="mt-5 justify-content-center"></div>
      <div id="agreement_box" class="mt-5 justify-content-center">
        <h2 class="mt-5 fw-bold">보내는 분</h2>
        <form action="/home/reservationForHomeStep2" method="get">
          <table class="table border-top border-3">
            <colgroup>
              <col style="width: 23%" />
            </colgroup>
            <tbody>
              <tr class="first1">
                <th scope="row" class="bg-secondary bg-opacity-10">
                  보내는 사람
                </th>
                <td class="lh_40">
                  <input
                    type="text"
                    class="inp04 form-control w-50"
                    name="SENDER_NAME"
                    maxlength="7"
                    value=""
                    required
                  />
                </td>
              </tr>
              <tr>
                <th scope="row" class="bg-secondary bg-opacity-10">연락처</th>
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
                  <p
                    class="c_red pdt_10"
                    style="color: rgb(255, 80, 123); font-size: 0.9rem"
                  >
                    * 연락처기반으로 예약조회가 가능하니, 정확한 입력바랍니다.
                  </p>
                </td>
              </tr>

              <tr>
                <th scope="row" class="bg-secondary bg-opacity-10">
                  보내는 곳
                </th>
                <td>
                  <div class="mgb_5">
                    <input
                      type="hidden"
                      name="s_zipcode"
                      value=""
                      class="inp03"
                      readonly="readonly"
                    />
                  </div>
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
                      name="DEPARTURE_POSTALCODE"
                      id="sample6_postcode"
                      placeholder="우편번호"
                      required
                    />
                    <input
                      class="form-control mt-2"
                      type="text"
                      name="DEPARTURE_ADDRESS"
                      id="sample6_address"
                      placeholder="주소"
                      required
                    />
                    <input
                      class="form-control mt-2"
                      type="text"
                      name="DEPARTURE_DETAILADDRESS"
                      id="sample6_detailAddress"
                      placeholder="상세주소"
                      required
                    />
                    <input
                      class="form-control mt-2"
                      type="text"
                      name="DEPARTURE_EXTRAADDRESS"
                      id="sample6_extraAddress"
                      placeholder="참고항목"
                    />
                  </p>
                </td>
              </tr>

              <tr>
                <th scope="row" class="bg-secondary bg-opacity-10">비밀번호</th>
                <td>
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
                </td>
              </tr>
            </tbody>
          </table>
          <br />

          <div
            class="d-flex justify-content-center"
            style="margin-bottom: 70px"
          >
            <a
              href="/terms/termsForHome"
              class="btn btn-secondary me-3"
              style="width: 12rem; height: 3rem"
              >이전단계</a
            >
            <button
              type="submit"
              class="btn me-3 text-light"
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
            <div class="align-self-center flex-fill" style="text-align: center">
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
    </main>
    <jsp:include page="../footer.jsp" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script src="/resources/js/termsForHomes.js"></script>

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
