<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <%@ taglib
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
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
    <style>
      input:focus {
        outline: 1px solid rgb(55, 210, 67);
      }
    </style>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main style="font-family: 'Noto Sans KR', sans-serif">
      <div class="container-fluid" style="background-color: rgb(249, 249, 249)">
        <div class="container d-flex justify-content-center">
          <div class="mt-5" style="width: 650px">
            <h2 class="fw-bold text-center">프리미엄 홈택배 예약</h2>
            <form action="/home/reservationReceiver" method="get">
              <div class="row">
                <div
                  class="col fs-4 fw-bold pb-2 mb-4 pt-3"
                  style="
                    color: rgb(55, 210, 67);
                    border-bottom: 1px solid rgb(55, 210, 67);
                  "
                >
                  보내는 분
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
                class="shadow-sm p-3"
                style="border-radius: 15px 15px; background-color: white"
              >
                <sec:authentication
                  property="principal"
                  var="userDetailsBean"
                />

                <table class="table table-borderless">
                  <tr class="mb-3">
                    <th class="text-nowrap">품목선택</th>
                    <td class="p-3 ps-5">
                      <input
                        class="form-check-input me-2"
                        style="zoom: 1.2"
                        type="radio"
                        name="addr_label"
                        id="user_addr"
                        checked="checked"
                      />
                      <label class="form-check-label" for="user_addr"
                        >회원정보 주소</label
                      >
                      <input
                        class="form-check-input ms-3 me-2"
                        style="zoom: 1.2"
                        type="radio"
                        name="addr_label"
                        id="new_addr"
                      />
                      <label class="form-check-label" for="new_addr"
                        >새로운 주소</label
                      >
                    </td>
                  </tr>
                  <tr>
                    <th>이름</th>
                    <td class="ps-5">
                      <input
                        type="text"
                        class="w-100 border border-secondary border-opacity-10 p-3"
                        style="border-radius: 10px"
                        name="SENDER_NAME"
                        id="userName"
                        value="${userDetailsBean.memberName}"
                        placeholder="이름"
                        required
                      />
                    </td>
                  </tr>
                  <tr>
                    <th class="text-nowrap">휴대폰번호</th>
                    <td class="ps-5">
                      <input
                        type="text"
                        class="w-100 border border-secondary border-opacity-10 p-3"
                        style="border-radius: 10px"
                        name="SENDER_PHONE"
                        id="userPhoneNumber"
                        value="${userDetailsBean.phone}"
                        placeholder="휴대폰번호"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                        required
                      />
                    </td>
                  </tr>
                  <tr>
                    <th>주소</th>
                    <td class="ps-5">
                      <input
                        id="postSearch"
                        class="border border-secondary border-opacity-10 p-2 mb-2"
                        style="
                          width: 150px;
                          background-color: white;
                          border-radius: 10px;
                        "
                        type="button"
                        onclick="sample6_execDaumPostcode()"
                        value="우편번호 찾기"
                      />
                      <input
                        class="w-100 border border-secondary border-opacity-10 p-3 mb-2"
                        style="border-radius: 10px"
                        type="text"
                        id="sample6_postcode"
                        name="DEPARTURE_POSTALCODE"
                        value="${userDetailsBean.postalCode}"
                        onclick="sample6_execDaumPostcode()"
                        placeholder="우편번호"
                        required
                      />
                      <input
                        class="w-100 border border-secondary border-opacity-10 p-3 mb-2"
                        style="border-radius: 10px"
                        type="text"
                        id="sample6_address"
                        name="DEPARTURE_ADDRESS"
                        value="${userDetailsBean.address}"
                        placeholder="주소"
                        required
                      />
                      <input
                        class="w-100 border border-secondary border-opacity-10 p-3 mb-2"
                        style="border-radius: 10px"
                        type="text"
                        class="col-10"
                        id="sample6_detailAddress"
                        name="DEPARTURE_DETAILADDRESS"
                        value="${userDetailsBean.detailAddress}"
                        placeholder="상세주소"
                        required
                      />
                      <input
                        class="w-100 border border-secondary border-opacity-10 p-3"
                        style="border-radius: 10px"
                        type="text"
                        id="sample6_extraAddress"
                        name="DEPARTURE_EXTRAADDRESS"
                        value="${userDetailsBean.extraAddress}"
                        placeholder="참고항목"
                      />
                    </td>
                  </tr>
                </table>
              </div>
              <div class="col text-end mt-3" style="margin-bottom: 200px">
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
            </form>
          </div>
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      // 새로운 주소 선택하면 input 값 초기화
      $("#new_addr").click(function () {
        alert("보내는 분 정보가 초기화  됩니다. 계속하시겠습니까?");
        $("input").val("");
        $("#postSearch").val("우편번호 찾기");
      });

      // 회원정보 주소 선택하면 다시 input value에 회원정보 들어감
      $("#user_addr").click(function () {
        $("#userName").val("${userDetailsBean.memberName}");
        $("#userPhoneNumber").val("${userDetailsBean.phone}");
        $("#sample6_postcode").val("${userDetailsBean.postalCode}");
        $("#sample6_address").val("${userDetailsBean.address}");
        $("#sample6_detailAddress").val("${userDetailsBean.detailAddress}");
        $("#sample6_extraAddress").val("${userDetailsBean.extraAddress}");
      });

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

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
