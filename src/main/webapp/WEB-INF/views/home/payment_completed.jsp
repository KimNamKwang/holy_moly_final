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
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main class="container" style="font-family: 'Noto Sans KR', sans-serif">
      <div class="mt-5">
        <div>
          <div class="fs-3">
            <span class="fw-bold">결제</span>가 완료되었습니다.
          </div>
          <div class="mt-3">
            점포별 택배 마감시간 이전에 맡기신 물건은 일반지역 : 2영업일 이내
            배송
          </div>
          <div>
            제주 및 도서, 산간지역은 배송이 지연될 수 있습니다.(단 공휴일,
            일요일, 천재지변시에는 배송기일에서 제외됩니다)
          </div>
          <div>
            점포별 택배 마감시간은 평일 17시 (시,군,구 일부지역 및 경기 일부지역
            15시), 토요일 12시 이며, 일요일 및 공휴일은 배송되지 않습니다.
          </div>
          <div>택배 마감시간은 지역마다 다르므로 직접 문의 바랍니다.</div>
        </div>
        <div class="mt-5 text-center">
          <a
            href="/delivery/trackShipment"
            class="btn me-3 text-light"
            style="
              width: 12rem;
              height: 3rem;
              background-color: rgb(55, 210, 67);
              font-size: 1.1rem;
            "
            >배송조회</a
          >
          <a
            href="/index"
            class="btn me-3 text-light"
            style="
              width: 12rem;
              height: 3rem;
              background-color: rgb(55, 210, 67);
              font-size: 1.1rem;
            "
            >홈</a
          >
        </div>
      </div>
    </main>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script src="/js/termsForHomes.js"></script>
  </body>
</html>
