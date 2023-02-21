<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      class="bg-secondary bg-opacity-10 pb-5"
      style="font-family: 'Noto Sans KR', sans-serif"
    >
      <div>
        <div
          class="d-flex align-items-center mt-4 bg-white"
          style="height: 6rem"
        >
          <form
            class="d-flex justify-content-between w-75 container"
            role="search"
            action=""
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
          class="container bg-white w-75 mt-4 border rounded align-items-center"
        >
          <div class="mt-3" style="font-size: smaller">전체 128건</div>
          <hr class="mt-1" />

          <!-- 내용 (title, date) -->
          <div>
            <div class="text-secondary" style="font-size: small">
              2023.01.09
            </div>
            <a href="/cs/noticeView" class="mt-2 text-decoration-none text-dark"
              >2023년 설 연휴 택배중단 안내</a
            >
            <hr />
          </div>
          <div>
            <div class="text-secondary" style="font-size: small">
              2023.01.03
            </div>
            <a href="/cs/noticeView" class="mt-2 text-decoration-none text-dark"
              >2023년 설 연휴 홈택배 중단 일정 안내</a
            >
            <hr />
          </div>
          <div>
            <div class="text-secondary" style="font-size: small">
              2022.12.28
            </div>
            <a href="/cs/noticeView" class="mt-2 text-decoration-none text-dark"
              >국내택배 운임 조정 안내</a
            >
            <hr />
          </div>
          <div>
            <div class="text-secondary" style="font-size: small">
              2022.12.22
            </div>
            <a href="/cs/noticeView" class="mt-2 text-decoration-none text-dark"
              >제주도 전역 기상학화 영향으로 선박 결항 안내</a
            >
            <hr />
          </div>
          <div class="text-center text-secondary mb-3">
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-center">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>

                <li class="page-item">
                  <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">3</a>
                </li>

                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
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