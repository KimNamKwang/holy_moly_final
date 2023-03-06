<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 - 게시글 추가</title>
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
          <div class="fs-3 fw-bold pb-3">게시글 신규 등록</div>
          <form action="/admin/boardInsert" method="get" enctype = “multipart/form-data”>
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
                      name="TITLE"
                      placeholder="제목"
                    />
                  </td>
                </tr>
                <tr>
                  <th>게시판 분류</th>
                  <td>
                    <select
                      class="w-100 border border-secondary border-opacity-25 p-2 text-center"
                      style="border-radius: 10px"
                      name="BOARD_UID"
                      id="boardType"
                    >
                      <option value="" selected disabled>선택</option>
                      <option value="BOARD_NOTICE">공지사항</option>
                      <option value="BOARD_EVENT">이벤트</option>
                      <option value="BOARD_FAQ">FAQ</option>
                    </select>
                  </td>
                </tr>
                <tr id="eventTerm" style="display: none">
                  <th>이벤트 기간</th>
                  <td class="row d-flex align-items-center">
                    <div class="col">
                      <input class="w-100 p-2"
                        style="border: 1px solid rgb(218,220,222);border-radius: 10px 10px; height: 43px;"
                        type="date"
                        name="EVENT_START_DATE"
                        id="eventTermStart">
                    </div>
                    <div class="col-auto ">
                      ~
                    </div>
                    <div class="col">
                      <input class="w-100 p-2"
                        style="border: 1px solid rgb(218,220,222); border-radius: 10px 10px;  height: 43px;"
                        type="date" name="EVENT_END_DATE" id="">
                    </div>
                  </td>
                </tr>
                <tr>
                <tr id="faqType" style="display: none">
                  <th>문의 유형</th>
                  <td>
                    <select
                      class="w-100 border border-secondary border-opacity-25 p-2 text-center"
                      style="border-radius: 10px"
                      name="FAQ_TYPE"
                    >
                      <option value="" selected disabled>선택</option>
                      <option value="REGISTER">접수문의</option>
                      <option value="SHIPPING">배송문의</option>
                      <option value="MAP">지도문의</option>
                      <option value="ACCIDENT">사고문의</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th class="text-nowrap">내용</th>
                  <td>
                    <textarea
                      class="w-100 border border-secondary border-opacity-25 p-2"
                      style="resize: none; height: 200px; border-radius: 10px"
                      name="CONTENT"
                      placeholder="내용"
                      required
                    ></textarea>
                  </td>
                </tr>
                <tr>
                  <th style="border-bottom: none">이미지</th>
                  <td style="border-bottom: none">
                    <div>
                      <input class="form-control" type="file" name="ORIGINALFILE_NAME" multiple />
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
    <jsp:include page="../footer.jsp" />
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
          if (result == "BOARD_FAQ") {
            $("#faqType").css("display", "");
          } else {
            $("#faqType").css("display", "none");
          }
        });
      });

      // 이벤트가 select되면 이벤트 기간 라인 노출
      $(document).ready(function () {
        $("#boardType").change(function () {
          let result = $("#boardType option:selected").val();
          if (result == "BOARD_EVENT") {
            $("#eventTerm").css("display", "");
          } else {
            $("#eventTerm").css("display", "none");
          }
        });
      });
    </script>
  </body>
</html>
