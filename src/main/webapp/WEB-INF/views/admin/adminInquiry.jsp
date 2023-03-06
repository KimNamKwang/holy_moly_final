<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>관리자 - 1:1문의</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
          rel="stylesheet" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
          integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

        <style>
          textarea:focus,
          select:focus {
            outline: 1px solid rgb(55, 210, 67);
          }

          .outline-green:focus {
            outline: 1px solid rgb(55, 210, 67);
          }

          ul {
            list-style: none;
            padding: 0;
          }

          textarea:focus {
            outline: 1px solid rgb(55, 210, 67);
          }
        </style>
      </head>

      <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
        <jsp:include page="../navbar.jsp" />
        <main>
          <div class="container-fluid pt-5" style="background-color: rgb(249, 249, 249); padding-bottom: 200px">
            <div class="container">
              <div class="d-flex row justify-content-center text-center">
                <div class="p-0" style="width: 710px">
                  <div class="text-start fs-2 fw-bold pb-3">1:1문의 관리</div>
                  <div class="p-4 mt-3 text-start shadow-sm" style="background-color: white">
                    <c:set var="_pagination" value="${resultMap.paginations}" />
                    <div>
                      전체
                      <span class="fw-bold" style="color: rgb(55, 210, 77)">
                        ${_pagination.totalCount}</span>건
                    </div>
                    <ul>
                      <li class="pt-4 mt-4" style="border-top: 1px solid rgb(236, 240, 242)">
                        <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
                          <div class="row d-flex justify-content-between">
                            <div class="pb-1">
                              <img src="/resources/images/사람아이콘.png" style="width: 35px" alt="" />
                              <span class="fw-bold" style="font-size: 1.1rem">${resultData.NAME}</span>
                              <span>${resultData.E_MAIL}</span>
                            </div>
                            <div class="col mt-1 pb-3" style="font-size: 0.9rem; color: rgb(165, 165, 165)">
                              등록일 | ${resultData.INQUIRY_DATE}
                            </div>

                            <div class="col-auto p-1" style="
                            background-color: rgb(242, 255, 216);
                            border-radius: 20px;
                            color: rgb(55, 210, 77);
                            font-size: 0.9rem;
                            height: 29px;
                          ">
                              ${resultData.INQUIRY_TYPE_DESCRIPTION}
                            </div>
                            <c:set var="index" value="${loop.index}" />
                            <div class="fs-6 fw-bold">
                              ${resultData.INQUIRY_TITLE}
                            </div>
                            <div class="fs-6 pt-3">
                              ${resultData.INQUIRY_CONTENT}
                            </div>
                            <div class="pt-3">
                              <div id="replybtn">
                                <a class="btn d-flex align-items-center" href="#collapseTarget${index}"
                                  data-bs-toggle="collapse" style="
                                border: 1px solid rgb(233, 236, 239);
                                width: 150px;
                              ">
                                  <span class="material-symbols-outlined" style="font-size: 1rem">
                                    drive_file_rename_outline
                                  </span>
                                  <c:if test="${resultData.PROGRESS_STATUS_UID == 'INQ_PROG_STAT_IN'}">
                                    <div class="ps-1">답글달기</div>
                                  </c:if>
                                  <c:if test="${resultData.PROGRESS_STATUS_UID == 'INQ_PROG_STAT_DONE'}">
                                    <div class="ps-1">답변이 완료된 건입니다. 수정하시겠습니까?</div>
                                  </c:if>
                                </a>
                              </div>
                              <div class="collapse" id="collapseTarget${index}">
                                <form action="/admin/updateInquiryAnswer" method="get">
                                  <input type="hidden" name="PROGRESS_STATUS_UID" value="INQ_PROG_STAT_DONE">
                                  <input type="hidden" name="INQUIRY_UID" value="${resultData.INQUIRY_UID}">
                                  <div class="pt-3">
                                    <textarea class="w-100 border border-secondary border-opacity-25 p-3"
                                      style="resize: none; border-radius: 10px" name="INQUIRY_ANSWER"
                                      id="contents${index}" cols="30" rows="6"
                                      placeholder="비방, 명예훼손을 포함은 답글의 경우 분쟁의 사유가 될 수 있습니다."></textarea>


                                    <div class="mt-2 text-end d-flex justify-content-end">
                                      <span id="counter${index}" style="font-size: 0.9rem">
                                        0
                                      </span>
                                      <span style="
                                    color: rgb(143, 143, 143);
                                    font-size: 0.9rem;
                                  ">
                                        / 400(최소15자)
                                      </span>
                                      <div id="updatearea">
                                        <button id="sendBtn" class="btn ms-1" style="
                                      background-color: rgb(204, 204, 204);
                                      color: white;
                                      width: 70px;
                                    ">
                                          등록
                                        </button>
                                </form>
                                <a href="#collapseTarget${index}" data-bs-toggle="collapse" class="btn btn-secondary"
                                  style="color: white; width: 70px">
                                  닫기
                                </a>
                              </div>
                            </div>
                            <div class="mt-2 text-end" id="editarea" style="display: none">
                              <button id="editBtn" class="btn ms-1" style="
                                    background-color: rgb(55, 210, 67);
                                    color: white;
                                    width: 70px;
                                  ">
                                수정
                              </button>
                              <button id="deleteBtn" class="btn ms-1" style="
                                    background-color: rgb(55, 210, 67);
                                    color: white;
                                    width: 70px;
                                  ">
                                삭제
                              </button>
                            </div>
                          </div>
                  </div>
                </div>
              </div>
              <hr />
              </c:forEach>

              <div class="mt-3 pb-3">
                <ul class="pagination justify-content-center">
                  <li class="page-item">
                    <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                      <span class="sr-only"></span>
                    </a>
                  </li>
                  <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
                    <li class="page-item">
                      <a class="page-link text-dark border-0" href="/admin/adminInquiry/${i}">${i}</a>
                    </li>
                  </c:forEach>

                  <li class="page-item">
                    <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                      <span class="sr-only"></span>
                    </a>
                  </li>
                </ul>
              </div>
              </li>
              </ul>
            </div>
          </div>
          </div>
          </div>
          </div>
        </main>
        <!-- 여기부터 footer -->
        <jsp:include page="../footer.jsp" />
        <!-- 여기까지 footer -->
        <script>
          // 글자 수 세기
          // 텍스트박스에 name고정으로 주고 this.으로 작업하면 된다.
          $("#contents").on("keyup", function () {
            let words = $(this).val().length; // 입력한 문자의 수
            $("#counter").html(words);
            if (words > 400) {
              // 400자 초과한 경우 html -> 400 / 400 고정
              $(this).val($(this).val().substring(0, 400));
              $("#counter").html("400");
            }
            if (words >= 15) {
              // 15자 이상 작성된 경우 버튼 활성화
              $("#sendBtn").css("background", "rgb(55, 210, 67)");
            } else {
              $("#sendBtn").css("background", "rgb(204, 204, 204)");
            }
          });
          // 15자 미만일 때 등록 버튼 누르면 alert
          $("#sendBtn").click(function () {
            let words = $("#contents").val().length; // 입력된 문자의 수
            if (words < 15) {
              alert("최소 15자 이상 입력해 주세요.");
            }
          });
        </script>
        <script>
          $(function () {
            var value = $("#contents").val();
            if (value != "") {
              $("#editarea").css("display", "block");
              $("#updatearea").css("display", "none");
              $("#collapseTarget${index}").removeClass("collapse");
              // $("#replybtn").hide();
            }
          });
        </script>
        <script src="/resources/js/test.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
      </body>

      </html>