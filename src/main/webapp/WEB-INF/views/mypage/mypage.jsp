<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib
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

    <!-- 23.02.04추가 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
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
      #menu_div > ul {
        list-style-type: none;
      }

      #menu_div a {
        text-decoration: none;
        color: black;
      }
    </style>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <!--바디바디 시작-->
    <div
      class="container mt-5"
      style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 200px"
    >
      <div class="content-area group">
        <div class="mb-5">
          <!--마이페이지-->
          <h2 class="mypage-title"><b> 마이페이지</b></h2>
        </div>
        <div class="row">
          <!-- 1박스 -->
          <div class="col-auto pe-5">
            <h3><b>${resultMap.userInfo.NAME}</b>님은</h3>
            <h3>
              <b
                ><span style="color: rgb(55, 210, 67)"
                  >${resultMap.userInfo.GRADE}</span
                ></b
              >등급 회원입니다.
            </h3>
            <hr noshade size="5px" style="width: 450px" />
            <div class="row">
              <div class="col-auto">
                <sec:authentication
                  property="principal"
                  var="userDetailsBean"
                />
                <form action="/mypage/myinfo" method="get">
                  <input
                    type="hidden"
                    value="${userDetailsBean.user_Uid}"
                    name="USER_UID"
                  />
                  <button
                    id="btn-update-myinfo"
                    style="
                      border-radius: 20px;
                      background-color: #f2ffd9;
                      border: 1px solid white;
                    "
                  >
                    <span style="color: rgb(55, 210, 67)"> 내 정보 수정</span>
                  </button>
                </form>
              </div>

              <div class="col">
                <a href="/grade/gradeBenefit">
                  <button
                    style="
                      border-radius: 20px;
                      background-color: #f2ffd9;
                      border: 1px solid white;
                    "
                  >
                    <span style="color: rgb(55, 210, 67)">등급별 혜택</span>
                  </button></a
                >
              </div>
            </div>
          </div>
          <!-- 윗부분 -->
          <div
            class="col-auto"
            style="border-left: 1px solid rgb(217, 217, 217); height: 100px"
          >
            <div>
              <div id="menu_div">
                <ul>
                  <li>
                    <a href="/mypage/myPoint" class="d-flex align-items-center">
                      <img src="/resources/images/쿠폰함.png" alt="" />
                      <b class="ms-1 pe-5">포인트</b>
                      <b class="ms-3"
                        ><span style="color: rgb(55, 210, 67); font-size: 150%"
                          >${resultMap.userInfo.POINT}</span
                        >
                      </b>
                    </a>
                  </li>
                </ul>
              </div>

              <div id="menu_div">
                <ul id="link_ul">
                  <li>
                    <a
                      href="/customer/inquiryList"
                      class="d-flex align-items-center"
                    >
                      <img src="/resources/images/내문의현황.png" alt="" />
                      <b class="ms-1 pe-5">내 문의 현황</b>
                      <b class="ms-3">
                        <span style="font-size: 1.5rem"
                          >${resultMap.inquiryTotalCount.TOTAL_USER_INQUIRYS}</span
                        >건
                      </b>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- 윗부분 -->
        <!-- 예약내역 조회 부분 -->
        <div>
          <div style="margin-top: 9rem">
            <div>
              <button style="border: 0px; background-color: white">
                <a:hover style="color: #86919c">
                  <b><span style="font-size: 150%">예약내역 조회</span></b>
                </a:hover>
              </button>
            </div>
            <!-- 박스 시작 -->
            <div style="background-color: #f9f9f9; width: auto; height: auto">
              <div class="d-flex pt-4 pb-4">
                <!-- 택배 종류 -->
                <div class="me-5">
                  <div>
                    <button
                      class="btn fs-5"
                      style="color: #86919c"
                      id="nomalDelivery"
                    >
                      방문택배
                    </button>
                  </div>
                  <div>
                    <button
                      class="btn fs-5"
                      style="color: #86919c"
                      id="premiumDelivery"
                    >
                      프리미엄 택배
                    </button>
                  </div>
                </div>

                <!-- 흰박스 시작 -->
                <div
                  class="border rounded-4 p-3 w-75 m-auto"
                  style="background-color: white"
                >
                  <div>
                    <form action="">
                      <!-- 기간선택 -->
                      <div class="d-flex align-items-center">
                        <label style="font-size: smaller" class="text-nowrap"
                          >기간선택</label
                        >
                        <select
                          name="searchTerm"
                          class="form-select ms-2 w-25"
                          onchange="handleOnChange(this)"
                        >
                          <option value="today" selected>당일</option>
                          <option value="7">최근 7일</option>
                          <option value="14">최근 14일</option>
                        </select>

                        <input
                          type="date"
                          id="previousDate"
                          class="form-control ms-2 w-25"
                        />
                        <div class="text-center ms-2 me-2 fs-4">~</div>
                        <input
                          type="date"
                          id="currentDate"
                          class="form-control w-25"
                        />
                        <button class="btn">
                          <span class="material-symbols-outlined fs-3">
                            search
                          </span>
                        </button>
                      </div>

                      <!-- 기간선택 끝 -->
                    </form>
                  </div>
                  <!-- 검색목록(테이블) -->
                  <div class="mt-4" id="nomalDeliveryContent">
                    <table class="table">
                      <thead>
                        <tr>
                          <th class="text-nowrap">예약일자</th>
                          <th class="text-nowrap">연락처</th>
                          <th class="text-nowrap">수신자</th>
                          <th class="text-nowrap">주소</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach
                          items="${resultMap.shipmentBreakdown}"
                          var="_shipmentBreakdown"
                          varStatus="loop"
                        >
                          <tr>
                            <td>
                              ${fn:substring(_shipmentBreakdown.RESERVATION_DATE,0,10)}
                            </td>
                            <td>${_shipmentBreakdown.RECIPIENT_PHONE}</td>
                            <td>${_shipmentBreakdown.RECIPIENT_NAME}</td>
                            <td>
                              ${_shipmentBreakdown.DESTINATION_ADDRESS}
                              ${_shipmentBreakdown.DESTINATION_DETAILADDRESS}
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <!-- 검색목록(테이블) -->

                  <!-- 검색목록(테이블) -->
                  <div
                    class="mt-4"
                    id="premiumDeliveryContent"
                    style="display: none"
                  >
                    <table class="table">
                      <thead>
                        <tr>
                          <th class="text-nowrap">예약일자</th>
                          <th class="text-nowrap">연락처</th>
                          <th class="text-nowrap">수신자</th>
                          <th class="text-nowrap">주소</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach
                          items="${resultMap.shipmentBreakdown}"
                          var="_shipmentBreakdown"
                          varStatus="loop"
                        >
                          <tr>
                            <td>
                              ${fn:substring(_shipmentBreakdown.RESERVATION_DATE,0,10)}
                            </td>
                            <td>${_shipmentBreakdown.RECIPIENT_PHONE}</td>
                            <td>${_shipmentBreakdown.RECIPIENT_NAME}</td>
                            <td>
                              ${_shipmentBreakdown.DESTINATION_ADDRESS}
                              ${_shipmentBreakdown.DESTINATION_DETAILADDRESS}
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <!-- 검색목록(테이블) -->
                </div>
                <!-- 흰박스 끝 -->
              </div>
            </div>
            <!-- 박스 끝 -->
          </div>
        </div>
        <!-- 여기까지 예약 내역 조회 부분 -->
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script>
      // 오늘 날짜 설정
      var date = new Date();

      var currentdate =
        date.getFullYear() +
        "-" +
        ("0" + (date.getMonth() + 1)).slice(-2) +
        "-" +
        ("0" + date.getDate()).slice(-2);

      document.getElementById("currentDate").value = currentdate;
      document.getElementById("previousDate").value = currentdate;

      function handleOnChange(event) {
        // 선택된 데이터 가져오기
        const value = event.value;
        // 날짜 초기화
        date = new Date();

        if (value == 7) {
          // 7일전
          var date2 = date.getTime() - 7 * 24 * 60 * 60 * 1000;
          date.setTime(date2);
        } else if (value == 14) {
          // 14일전
          var date2 = date.getTime() - 14 * 24 * 60 * 60 * 1000;
          date.setTime(date2);
        } else if (value == "today") {
          // 당일
          var date2 = date.getTime();
          date.setTime(date2);
        }

        // value 값에 따라 result 날짜가 바뀐다.
        result =
          // slice(-2) 뒤에서 2글자 012로 들어가면 12를 가져오고 기본으로 01,02 가 들어가면 그대로 가져옴
          date.getFullYear() +
          "-" +
          ("0" + (date.getMonth() + 1)).slice(-2) +
          "-" +
          ("0" + date.getDate()).slice(-2);

        // previousDate value 값 result로 설정
        document.getElementById("previousDate").value = result;
      }
    </script>

    <script>
      $(function () {
        $("#nomalDelivery").click(function () {
          $("#nomalDeliveryContent").css({
            display: "block",
          });
          $("#premiumDeliveryContent").css({
            display: "none",
          });
        });
        $("#premiumDelivery").click(function () {
          $("#nomalDeliveryContent").css({
            display: "none",
          });
          $("#premiumDeliveryContent").css({
            display: "block",
          });
        });
      });
    </script>
  </body>
</html>
