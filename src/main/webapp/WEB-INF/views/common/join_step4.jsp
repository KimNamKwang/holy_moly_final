<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>가입완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet" />
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/join.css" />
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  </head>

  <body class="bg-light" style="font-family: 'Noto Sans KR', sans-serif">
    <jsp:include page="../navbar.jsp" />
    <div class="container" style="width: 600px">
      <div class="row mb-5 d-flex align-items-center text-start" style="padding-top: 150px">
        <div class="col-3 d-flex align-items-center">
          <a href="/index" class="navbar-brand">
            <div style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)">
              <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
              <span class="material-symbols-outlined fw-bold align-middle">
                local_shipping
              </span>
            </div>
          </a>
        </div>
        <div class="col-2 text-green text-nowrap fs-5 fw-bold d-flex align-items-center">
          회원가입
        </div>
        <div class="col">
          <span style="text-decoration: line-through; color: rgb(55, 210, 67)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
          <span style="text-decoration: line-through; color: rgb(210, 241, 212)">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          </span>
        </div>
      </div>
      <div class="bg-white rounded p-4" style="margin-bottom: 200px">
        <div class="border rounded">
          <div class="row">
            <div class="col border-end opacity-50 pe-0">
              <div class="col border-bottom p-2">
                <div class="row">
                  <div class="col">생년월일</div>
                  <div class="col text-nowrap">${resultMap.BIRTH_DATE}</div>
                </div>
              </div>
              <div class="border-bottom p-2">
                <div class="row pb-2">
                  <div class="col-auto fw-bold">이름</div>
                  <div class="col-auto fs-5">${resultMap.NAME}</div>
                  <div class="col-auto">(☎️${resultMap.PHONE})</div>
                </div>
                <div class="fw-bold">주소</div>
                <div>${resultMap.ADDRESS} ${resultMap.DETAILADDRESS}</div>
              </div>
              <div class="p-2">
                <div class="row">
                  <div class="col fw-bold text-nowrap">이메일 주소</div>
                  <div class="col text-nowrap">${resultMap.E_MAIL}</div>
                </div>
              </div>
            </div>
            <div class="col p-3">
              <div class="opacity-50">
                <div class="fw-bold pb-2">아이디</div>
                <div class="fs-5 pb-2">${resultMap.USER_UID}</div>
                <div>&nbsp;</div>
                <div>&nbsp;</div>
                <div class="fw-bold">비고 이용약관 동의함</div>
              </div>
              <div><img src="/resources/image/barcode.png" alt="" /></div>
            </div>
          </div>
        </div>
        <div class="text-center m-3 pb-3">
          <div class="fs-5 pb-2">회원가입이 완료되었습니다.</div>
          <div>POST 신규회원가입을 축하드립니다.</div>
        </div>
        <div class="d-flex justify-content-center">
          <div class="row">
            <div class="col">
              <a href="/index" class="btn btn-outline-secondary fw-bold" style="width: 90px">홈</a>
            </div>
            <div class="col">
              <a href="/common/login" class="btn text-light fw-bold"
                style="background-color: rgb(55, 210, 67); width: 90px">로그인</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
  </body>

  </html>