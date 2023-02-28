<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 - 사용자</title>
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
        class="container-fluid pt-5"
        style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
      >
        <div class="container">
          <div class="fs-2 fw-bold pb-3">사용자 관리</div>
          <div class="text-secondary">
            총 인원수 :
            <span class="fw-bold">${resultMap.totalCount.TOTAL_USER}</span>
          </div>
          <div class="ps-4 pe-4 mt-2 shadow-sm" style="background-color: white">
            <table class="table text-center border-none mb-0">
              <thead class="border-bottom border-3">
                <tr>
                  <th>이름</th>
                  <th>아이디</th>
                  <th>가입일</th>
                  <th>등급</th>
                  <th>관리</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach
                  items="${resultMap.userList}"
                  var="_userList"
                  varStatus="loop"
                >
                  <tr>
                    <td>
                      <a
                        href="#modalRead"
                        data-bs-toggle="modal"
                        class="text-dark"
                        >${_userList.NAME}</a
                      >
                    </td>
                    <td>${_userList.USER_UID}</td>
                    <td>${_userList.JOINDATE}</td>
                    <td>${_userList.GRADE}</td>
                    <td>
                      <a
                        href="/admin/adminUserUpdate"
                        class="btn btn btn-outline-dark btn-sm"
                        >수정</a
                      >
                      <button class="btn btn btn-outline-dark btn-sm">
                        탈퇴
                      </button>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>

            <div class="text-end pt-2 pb-2">
              <a
                href="/admin/adminUserCreate"
                class="btn btn btn-outline-dark btn-sm"
                >신규등록</a
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

          <!-- 추후 구현(ajax) -->
          <!-- 사용자 상세 정보 -->
          <div class="modal fade" id="modalRead">
            <div class="modal-dialog">
              <div class="modal-content ps-3 pe-3">
                <div class="modal-header">
                  <div class="fs-5 fw-bold">_님의 정보</div>
                </div>
                <div class="modal-body">
                  <table class="table mb-0">
                    <tr>
                      <th>이름</th>
                      <td>userName</td>
                    </tr>
                    <tr>
                      <th>생년월일</th>
                      <td>1996/04/11</td>
                    </tr>
                    <tr>
                      <th>아이디</th>
                      <td>userId</td>
                    </tr>
                    <tr>
                      <th>등급</th>
                      <td>userGrade</td>
                    </tr>
                    <tr>
                      <th>연락처</th>
                      <td>phone_number</td>
                    </tr>
                    <tr>
                      <th>이메일</th>
                      <td>email</td>
                    </tr>
                    <tr>
                      <th style="border-bottom: none">주소</th>
                      <td style="border-bottom: none">
                        <div>address</div>
                        <div>상세주소</div>
                        <div>참고사항</div>
                      </td>
                    </tr>
                  </table>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" data-bs-dismiss="modal">
                    닫기
                  </button>
                </div>
              </div>
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
