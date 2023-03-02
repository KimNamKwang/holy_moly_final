<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 - 게시판</title>
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
    <style>
      textarea:focus,
      select:focus {
        outline: 1px solid rgb(55, 210, 67);
      }

      .outline-green:focus {
        outline: 1px solid rgb(55, 210, 67);
      }
    </style>
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
        class="container-fluid pt-5"
        style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
      >
        <div class="container">
          <div class="fs-2 fw-bold pb-3">게시판 관리</div>
          <div class="text-secondary">
            총 게시판수 : <span class="fw-bold">${resultMap.totalCount.TOTAL_BOARD}</span>
          </div>
          <div class="ps-4 pe-4 mt-2 shadow-sm" style="background-color: white">
            <table class="table text-center border-none mb-0">
              <thead class="border-bottom border-3">
                <tr>
                  <th class="text-nowrap">번호</th>
                  <th class="text-nowrap">제목</th>
                  <th class="text-nowrap">게시판명</th>
                  <th class="text-nowrap">등록일</th>
                  <th class="text-nowrap">관리</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach
                  items="${resultMap.BoardList}"
                  var="_BoardList"
                  varStatus="loop"
                >
                <tr>
                  <td><c:out value="${loop.count}" /></td>
                  <td>
                    <a href="#" class="text-dark"
                      >${_BoardList.TITLE}</a
                    >
                  </td>
                  <td>${_BoardList.BOARD_TYPE_DESCRIPTION}</td>
                  <td>${_BoardList.DATE_CREATED}</td>
                  <td>
                    <a
                      href="/admin/adminBoardUpdate?COMMONBOARD_UID=${_BoardList.COMMONBOARD_UID}"
                      class="btn btn btn-outline-dark btn-sm"
                      >수정</a
                    >
                    <a href="/admin/boardDelete?COMMONBOARD_UID=${_BoardList.COMMONBOARD_UID}"
                       class="btn btn btn-outline-dark btn-sm">
                      삭제
                    </a>
                  </td>
                </tr>
                </c:forEach>
              </tbody>
            </table>

            <div class="text-end pt-2 pb-2">
              <a
                href="/admin/adminBoardCreate"
                class="btn btn btn-outline-dark btn-sm"
                >게시판추가</a
              >
            </div>
            <div class="mt-2 pb-3">
              <ul class="pagination justify-content-center">
                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="#"
                    aria-label="Previous"
                  >
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>

                <li class="page-item">
                  <a class="page-link text-dark border-0" href="#">1</a>
                </li>
                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="#"
                    >2</a
                  >
                </li>
                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="#"
                    >3</a
                  >
                </li>

                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="#"
                    aria-label="Next"
                  >
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
