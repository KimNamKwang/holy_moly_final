<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <main
      style="
        font-family: 'Noto Sans KR', sans-serif;
        background-color: rgb(249, 249, 249);
        padding-bottom: 150px;
      "
    >
      <div>
        <div
          class="d-flex align-items-center mt-4 bg-white"
          style="height: 6rem"
        >
          <form
            class="d-flex justify-content-between w-75 container"
            role="search"
          >
            <div class="fs-3 fw-bold">공지사항</div>
            <div class="d-flex">
              <input
                class="form-control me-2"
                type="search"
                placeholder="검색어"
                style="width: 15rem"
              />
              <button class="btn btn-outline-success" type="submit">
                Search
              </button>
            </div>
          </form>
        </div>
        <div
          class="container bg-white w-75 mt-4 align-items-center shadow-sm" 
          style="border-radius: 15px 15px; padding: 10px 30px 15px 30px"
        >
          <c:set var="_pagination" value="${resultMap.paginations}" />
          <div class="mt-3 mb-4 border-bottom border-dark" style="font-size: 0.9rem;">
            전체<span class="fw-bold fs-5"> ${_pagination.totalCount} </span>건
          </div>
          <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
                    <!-- 내용 (title, date) -->
          <a href="/cs/noticeView/${resultData.COMMONBOARD_UID}" class="text-decoration-none text-dark"
              style="font-size:1.2rem"
              >
          <div>
            <div class="text-secondary" style="font-size: small">
              ${fn:substring(resultData.DATE_CREATED,0,10)}
            </div>
            <div class="pt-2">
            ${resultData.TITLE}

            </div>
            <hr />
          </div>
          </a
            >
          </c:forEach>

          <div class="mb-3 pt-3">
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-center">
                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="/cs/noticeList/${_pagination.previousPage}"
                    aria-label="Previous"
                  >
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>
                <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(55, 210, 67)"
                    href="/cs/noticeList/${i}"
                    >${i}</a
                  >
                </li>
                </c:forEach>

                <li class="page-item">
                  <a
                    class="page-link border-0"
                    style="color: rgb(180, 180, 180)"
                    href="/cs/noticeList/${_pagination.nextPage}"
                    aria-label="Next"
                  >
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
      <br />
    </main>
    <jsp:include page="../footer.jsp" />

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
