<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>

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

    <style>
      /* 테이블 style */

      th,
      td {
        padding: 1rem 0.5rem 1rem 0.5rem;
      }

      table {
        width: 100%;
      }

      #greenColor {
        color: rgb(55, 210, 67);
      }

      /* 여기까지 테이블 style */
    </style>
  </head>

  <body>
    <sec:authorize access="isAnonymous()">
      <c:set var="_setBalance" value="0" />
      <c:set var="USER_UID" value="" />
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
      <%-- 로그인이 되어잇으면 username을 가지고 DB를 갓다와야함 --%>
      <sec:authentication property="principal" var="prc" />
      <c:set var="_setBalance" value="${prc.totalPoint}" />
      <c:set var="USER_UID" value="${prc.user_Uid}" />
    </sec:authorize>
    <fmt:parseNumber value="${resultMap.TOTAL_PRICE}" integerOnly="true" var="int_Total_price" />
    <jsp:include page="../navbar.jsp" />
    <main
      style="
        font-family: 'Noto Sans KR', sans-serif;
        background-color: rgb(246, 246, 245);
      "
    >
      <div class="container pb-4" style="width: 45rem">
        <form action="/home/payment_completed" method="get">
          <!-- 제목 -->
          <div class="fw-bold fs-4 text-center pt-4">
            <c:if test="${resultMap.SHIPMENT_TYPE_UID eq 'SHIP_GEN' }">
              일반홈택배
            </c:if>
            <c:if test="${resultMap.SHIPMENT_TYPE_UID eq 'SHIP_BULK'} ">
              다량홈택배
            </c:if>
            <c:if test="${resultMap.SHIPMENT_TYPE_UID eq 'SHIP_PRE'} ">
              프리미엄
            </c:if>
            결제
          </div>

          <%-- 여기부터 input hidden으로 넘기는 parameter들 --%>
          <input
            type="hidden"
            name="USER_UID"
            value="${USER_UID}"
          />
          <input
            type="hidden"
            name="POINT_UID"
            value="${resultMap.TRACKING_NUMBER}"
          />
          <input
            type="hidden"
            name="TRACKING_NUMBER"
            value="${resultMap.TRACKING_NUMBER}"
          />
          <input
            type="hidden"
            name="NUMBER_OF_ITEMS"
            value="${resultMap.NUMBER_OF_ITEMS}"
          />
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
            name="TOTAL_PRICE"
            value="${int_Total_price}"
            id="total_price"
          />
          <input
            type="hidden"
            name="ITEM_PRICE"
            value="${resultMap.ITEM_PRICE*10000}"
          />
          <input
            type="hidden"
            name="SHIPMENT_PASSWORD"
            value="${resultMap.SHIPMENT_PASSWORD}"
          />
          <input
            type="hidden"
            name="VISITING_DATE"
            value="${resultMap.VISITING_DATE}"
          />
          <%-- SHIPMENT_TYPE_UID와 SHIPMENT_TYPE_DESCRIPTION은 일반택배라면
          하드코딩 고정. --%>
          <input
            type="hidden"
            name="SHIPMENT_TYPE_DESCRIPTION"
            value="프리미엄 택배"
          />
          <input type="hidden" name="SHIPMENT_TYPE_UID" value="SHIP_PRE" />
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
          <%-- 여기까지 input hidden으로 넘기는 parameter들 --%>
          <!-- 결제 정보 -->
          <div style="color: rgb(55, 210, 67)">
            <div class="fs-5 fw-bold">결제</div>
            <div>
              <hr style="border: 1px solid; margin-top: 0.6rem" />
            </div>
          </div>

          <!-- 테이블 전체 박스 -->
          <div style="background-color: white; border-radius: 10px" class="p-3">
            <!-- 할인/부가결제-->
            <div>
              <div class="fw-bold">할인/부가결제</div>
              <div>
                <hr style="border: 0.1rem solid lightgray" />
              </div>
              <div class="d-flex justify-content-between">
                <div>포인트</div>
                <div class="d-flex">
                  <input
                    type="number"
                    name="usePoint"
                    id="usePoint"
                    class="form-control"
                    value="0"
                  />
                  <a
                    href="#"
                    id="usePointbtn"
                    class="text-nowrap btn text-light"
                    style="background-color: rgb(55, 210, 67)"
                  >
                    전액 사용
                  </a>
                </div>
              </div>

              <div
                class="d-flex justify-content-between"
                style="font-size: 0.9rem"
              >
                <!-- 정보창 -->
                <div id="information" style="color: red"></div>
                <div class="d-flex">
                  <div>보유 포인트</div>
                  <%-- 로그인 상태인지 체크하여 로그인 했으면 보유 포인트 값을
                  불러오고 비회원이라면 보유포인트 0원 --%>
                  <div>&nbsp;</div>
                  <p class="text-info" id="balance">${_setBalance}</p>
                  <p class="text-info">원</p>
                </div>
              </div>
            </div>

            <!-- 결제정보 -->
            <div class="mt-5">
              <div class="fw-bold">결제정보</div>
              <div>
                <hr style="border: 0.1rem solid lightgray" />
              </div>
              <table>
                <tr>
                  <td>기본운임</td>
                  <td style="text-align: end">
                    <span id="basicPrice">${resultMap.TOTAL_PRICE}</span>원
                  </td>
                </tr>
                <tr>
                  <td>도서지역 할증료</td>
                  <td style="text-align: end">
                    <span id="islandPrice">0</span>원
                  </td>
                </tr>
                <tr>
                  <td>할인/부가결제</td>
                  <%-- 로그인했다면 사용자 등급별로 할인 받는 금액 + 위에서
                  포인트로 충당한 비용 까지 제하기. --%>
                  <td style="text-align: end">
                    <span id="pointPrice">0</span>원
                  </td>
                </tr>
                <tr
                  style="background-color: rgba(211, 211, 211, 0.3)"
                  id="greenColor"
                >
                  <th>최종 결제 금액</th>
                  <th style="text-align: end">
                    <span name="lastPrice" id="lastPrice">0</span>원
                  </th>
                </tr>
              </table>
            </div>

            <!--결제수단 -->
            <div class="mt-5">
              <div class="fw-bold">결제수단</div>
              <div>
                <hr style="border: 0.1rem solid lightgray" />
              </div>
              <select
                class="form-select mb-2"
                name="paymentSelect"
                id="paymentSelect"
              >
                <option value="1">계좌이체</option>
                <option value="2">카드결제</option>
                <option value="3">휴대폰결제</option>
              </select>

              <!-- 계좌이체 -->
              <div id="escrow">
                <div>
                  <div style="font-size: small">
                    <ul>
                      <li>
                        실시간 계좌이체를 이용하기 위해서는 계좌 결제앱이
                        설치되어있어야합니다.
                      </li>
                      <li>
                        계좌이체는 ATM이나 은행 홈페이지에 접속하지 않고 PEST
                        홈페이지 내에서 즉시 결제, 출금되는 결제 방식 입니다.
                      </li>
                      <li>
                        현재 약 20여개의 은행이 가능하며 현금영수증 발행은 결제
                        시 즉시 발급받으실 수 있습니다.
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <!-- 카드결제 -->
              <div id="card" style="display: none">
                <div>
                  <select
                    name="cardSelect"
                    id="cardSelect"
                    class="form-select w-25"
                  >
                    <option value="none" selected>카드선택</option>
                    <option value="samsung">삼성카드</option>
                    <option value="hyundai">현대카드</option>
                    <option value="hana">하나카드</option>
                    <option value="kb">국민카드</option>
                    <option value="shinhan">신한카드</option>
                  </select>
                </div>
              </div>
              <!-- 휴대폰결제 -->
              <div id="phone" style="display: none">
                <div>
                  <div style="font-size: small">
                    <ul>
                      <li>부분환불/결제 월이 지난 경우, 계좌로 환불 됩니다.</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

            <!-- 약관동의 -->
            <div class="mt-5">
              <div class="fw-bold">약관</div>
              <div>
                <hr style="border: 0.1rem solid lightgray" />
              </div>
              <div>
                <div class="pb-2" style="font-size: 1.1rem" id="checkbox_group">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="check_all"
                  />
                  <label class="form-check-label" for="check_all"
                    >모든 약관동의</label
                  >
                </div>
                <div class="pb-2" id="checkbox_group">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="check_1"
                    name="check"
                  />
                  <label class="form-check-label" for="check_1"
                    >[필수] 구매조건 확인 및 결제진행 동의</label
                  >
                </div>
                <div class="pb-2" id="checkbox_group">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="check_2"
                    name="check"
                  />
                  <label class="form-check-label" for="check_2"
                    >[필수] 청약철회방침 동의</label
                  >
                </div>
              </div>
            </div>
          </div>

          <!-- 버튼 박스 -->
          <div class="row mb-5">
            <div class="col mt-3">
              <a
                href="javascript:window.history.back();"
                class="btn btn-sm btn-secondary"
                style="border-radius: 50px"
                >BACK</a
              >
            </div>
            <div class="col text-end mt-3">
              <!--수정시 jquery attr href 링크 수정해야함 -->
              <button
                type="submit"
                class="btn btn-lg text-light fw-bold"
                style="background-color: rgb(55, 210, 67)"
                id="paymentBtn"
                disabled="disabled"
              >
                결제하기
              </button>
            </div>
          </div>
        </form>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      $(function () {
        // 처음 최종결제 금액 설정
        $("#lastPrice").text(Number($("#basicPrice").text()));

        $("#usePointbtn").click(function () {
          $("#information").text("");
          // 잔액
          var balance = Number($("#balance").text());
          $("#usePoint").val(balance);

          // input 창 (사용포인트)
          var usePoint = Number($("#usePoint").val());

          // 기본운임
          var basicPrice = Number($("#basicPrice").text());
          // 도서지역 할증료
          var islandPrice = Number($("#islandPrice").text());

          // 할인/부가결제 숫자변경
          $("#pointPrice").text(usePoint);

          // 계산식
          var lastPrice = basicPrice - usePoint - islandPrice;
          $("#lastPrice").text(lastPrice);
          $("#total_price").val(lastPrice);
        });

        $("#usePoint").change(function () {
          // input 창 (사용포인트)
          var usePoint = Number($("#usePoint").val());
          // 잔액
          var balance = Number($("#balance").text());
          // 기본운임
          var basicPrice = Number($("#basicPrice").text());
          // 도서지역 할증료
          var islandPrice = Number($("#islandPrice").text());
          // 최종결제 금액

          if (usePoint > balance) {
            $("#information").text("잔액이 부족합니다.");
            $(this).val(0);
            $("#pointPrice").text(0);
            // 계산식
            var lastPrice = basicPrice - islandPrice;
            $("#lastPrice").text(lastPrice);
          } else {
            $("#information").text("");
            $("#pointPrice").text(usePoint);

            // 계산식
            var lastPrice = basicPrice - usePoint - islandPrice;
            $("#lastPrice").text(lastPrice);
            $("#total_price").val(lastPrice);
          }
        });
      });
    </script>
    <script>
      // 결제수단 선택
      $(function () {
        $("#paymentSelect").change(function () {
          if ($("#paymentSelect option:selected").val() == "1") {
            $("#escrow").css("display", "block");
            $("#card").css("display", "none");
            $("#phone").css("display", "none");
          } else if ($("#paymentSelect :selected").val() == "2") {
            $("#escrow").css("display", "none");
            $("#card").css("display", "block");
            $("#phone").css("display", "none");

            // 카드 선택 안하면 돌려보냄
            $("#paymentBtn").click(function () {
              if ($("#cardSelect").val() == "none") {
                alert("카드를 선택해주세요");
                return false;
              }
            });
          } else {
            $("#escrow").css("display", "none");
            $("#card").css("display", "none");
            $("#phone").css("display", "block");
          }
        });
      });
    </script>
    <script>
      // 버튼 활성화 / 비활성화
      $(function () {
        $("#paymentBtn").attr("disabled", true);
        $("#paymentBtn").css("opacity", "25%");

        $("#check_all").click(function () {
          if ($(this).is(":checked")) {
            $("input:checkbox").prop("checked", true);
            $("#paymentBtn").attr("disabled", false);
            $("#paymentBtn").css("opacity", "100%");
          } else {
            $("input:checkbox").prop("checked", false);
            $("#paymentBtn").attr("disabled", true);
            $("#paymentBtn").css("opacity", "25%");
          }
        });

        $("input:checkbox[name='check']").change(function () {
          var check_lengh = $("input:checkbox[name='check']:checked").length;
          if (check_lengh == 2) {
            $("#paymentBtn").attr("disabled", false);
            $("#paymentBtn").css("opacity", "100%");
          } else {
            $("#paymentBtn").attr("disabled", true);
            $("#paymentBtn").css("opacity", "25%");
          }
        });
      });
    </script>
  </body>
</html>
