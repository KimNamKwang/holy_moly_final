<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>정보입력</title>
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
    <link rel="stylesheet" href="/resources/css/join.css" />
    <style>
      input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
      }
    </style>
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <div class="container" style="width: 600px; padding-bottom: 200px">
      <div
        class="row mb-5 d-flex align-items-center text-start"
        style="padding-top: 150px"
      >
        <div class="col-3 d-flex align-items-center">
          <a href="/index" class="navbar-brand">
            <div
              style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)"
            >
              <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
              <span class="material-symbols-outlined fw-bold align-middle">
                local_shipping
              </span>
            </div>
          </a>
        </div>
        <div
          class="col-2 text-green text-nowrap fs-5 fw-bold d-flex align-items-center"
        >
          회원가입
        </div>
        <div class="col">
          <span style="text-decoration: line-through; color: rgb(55, 210, 67)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
          <span
            style="text-decoration: line-through; color: rgb(210, 241, 212)"
          >
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
        </div>
      </div>
      <form action="/common/join_step4" method="get">
        <div class="bg-white border text-start p-4" style="border-radius: 20px">
          <table class="table align-middle table-borderless">
            <input
              type="hidden"
              name="MARKETING_RECEIVE_ACCEPTION"
              value="${resultMap.MARKETING_RECEIVE_ACCEPTION}"
            />
            <input type="hidden" name="Name" value="${resultMap.Name}" />
            <input
              type="hidden"
              name="USER_UID"
              value="${resultMap.USER_UID}"
            />
            <input
              type="hidden"
              name="PASSWORD" 
              value="${resultMap.PASSWORD}"
            />
            <input type="hidden" name="GRADE_UID" value="GRADE_F" />
            <input type="hidden" name="AUTH_UID" value="AUTH_U" />
            <tr>
              <th class="text-nowrap" style="vertical-align: top">생년월일</th>
              <td>
                <input
                  type="date"
                  class="form-control w-50"
                  name="BIRTH_DATE"
                  id="birth_date"
                  required
                />
              </td>
            </tr>
            <tr>
              <th style="vertical-align: top">연락처</th>
              <td class="row">
                <div class="col-auto">
                  <select
                    class="form-select"
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
                    required
                  />
                </div>
              </td>
            </tr>
            <tr>
              <th class="text-nowrap" style="vertical-align: top">
                이메일 주소
              </th>
              <td>
                <input
                  type="email"
                  class="form-control"
                  name="E_MAIL"
                  id="userEmail"
                  minlength="5"
                  placeholder="이메일 주소"
                  required
                />
              </td>
            </tr>
            <tr>
              <th style="vertical-align: top">주소</th>
            </tr>
            <tr>
              <td colspan="2">
                <input
                  class="form-control"
                  style="width: 150px"
                  type="button"
                  onclick="sample6_execDaumPostcode()"
                  value="우편번호 찾기"
                />
                <input
                  class="col-10 form-control"
                  type="text"
                  id="sample6_postcode"
                  name="POSTALCODE"
                  onclick="sample6_execDaumPostcode()"
                  placeholder="우편번호"
                />
                <input
                  class="form-control"
                  type="text"
                  id="sample6_address"
                  name="ADDRESS"
                  placeholder="주소"
                />
                <input
                  class="form-control"
                  type="text"
                  class="col-10"
                  id="sample6_detailAddress"
                  name="DETAILADDRESS"
                  placeholder="상세주소"
                />
                <input
                  class="form-control"
                  type="text"
                  id="sample6_extraAddress"
                  name="EXTRAADDRESS"
                  placeholder="참고항목"
                />
              </td>
            </tr>
          </table>
        </div>
        <div class="row">
          <div class="col mt-3">
            <a
              href="/common/join_step2"
              class="btn btn-sm"
              style="
                border-radius: 50px;
                color: white;
                background-color: rgb(165, 165, 165);
              "
              >BACK</a
            >
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
        </div>
      </form>
    </div>
    <jsp:include page="../footer.jsp" />

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
