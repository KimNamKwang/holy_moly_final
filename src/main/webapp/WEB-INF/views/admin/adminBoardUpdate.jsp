<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 - 게시글 수정</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
  </head>

  <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <main>
      <div
        class="container-fluid d-flex flex-column justify-content-center pt-5"
        style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
      >
        <div class="container" style="width: 650px">
          <!-- 이용방법 -->
          <div class="fs-3 fw-bold pb-3">게시글 수정</div>
          <form action="/admin/adminBoard" method="get">
            <div
              class="shadow-sm p-4 mb-4"
              style="border-radius: 10px 10px; background-color: white"
            >
              <table class="table align-middle mb-0">
                <tr>
                  <th>제목</th>
                  <td>
                    <input
                      type="text"
                      class="outline-green w-100 border border-secondary border-opacity-25 p-2"
                      style="border-radius: 10px"
                      name="boradTitle"
                      placeholder="제목"
                      value="${resultMap.TITLE}"
                    />
                  </td>
                </tr>
                <tr>
                  <th>게시판 분류</th>
                  <td>
                    <select
                      class="w-100 border border-secondary border-opacity-25 p-2 text-center"
                      style="border-radius: 10px"
                      name="boardType"
                      id="boardType"
                    >
                      <option value="" disabled>선택</option>
                      <option value="notice">공지사항</option>
                      <option value="event" selected>이벤트</option>
                      <option value="faq">FAQ</option>
                    </select>
                  </td>
                </tr>
                <tr id="faqType" style="display: none">
                  <th>문의 유형</th>
                  <td>
                    <select
                      class="w-100 border border-secondary border-opacity-25 p-2 text-center"
                      style="border-radius: 10px"
                      name="boardType"
                    >
                      <option value="" selected disabled>선택</option>
                      <option value="received">접수문의</option>
                      <option value="shipping">배송문의</option>
                      <option value="map">지도문의</option>
                      <option value="accident">사고문의</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th class="text-nowrap">내용</th>
                  <td>
                    <textarea
                      class="w-100 border border-secondary border-opacity-25 p-2"
                      style="resize: none; height: 200px; border-radius: 10px"
                      name="content"
                      placeholder="내용"
                      required
                    >
                    ${resultMap.CONTENT}
                    </textarea>
                  </td>
                </tr>
                <tr>
                  <th style="border-bottom: none">이미지</th>
                  <td style="border-bottom: none">
                    <div>
                      <input class="form-control" type="file" multiple />
                    </div>
                    <div style="font-size: 0.8rem; color: rgb(171, 171, 171)">
                      *FAQ는 이미지가 등록되지 않습니다.
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            <div class="text-center">
              <a
                href="/admin/adminBoard"
                class="btn btn-secondary me-2"
                style="width: 150px"
                >이전</a
              >
              <button
                class="btn btn-outline-secondary ms-2"
                style="width: 150px"
              >
                등록
              </button>
            </div>
          </form>
        </div>
      </div>
    </main>
    <!-- 여기부터 footer -->
    <jsp:include page="../footer.jsp" />
    <!-- 여기까지 footer -->

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      // FAQ가 select되면 문의 유형 선택 라인 노출
      $(document).ready(function () {
        $("#boardType").change(function () {
          let result = $("#boardType option:selected").val();
          if (result == "faq") {
            $("#faqType").css("display", "");
          } else {
            $("#faqType").css("display", "none");
          }
        });
      });

      // 우편번호
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
