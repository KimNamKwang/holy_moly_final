<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 여기부터 navbar -->
    <header class="">
      <nav class="navbar navbar-dark navbar-expand-sm">
        <div
          class="container-fluid border-bottom d-flex justify-content-between"
          style="height: 130px"
        >
          <div class="row d-flex align-items-center">
            <div class="col">
              <a href="/index" class="navbar-brand ms-5">
                <div
                  style="
                    font-family: 'Zen Dots', cursive;
                    color: rgb(76, 183, 86);
                  "
                >
                  <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
                  <span class="material-symbols-outlined fw-bold align-middle">
                    local_shipping
                  </span>
                </div>
              </a>
            </div>
            <div
              class="col ms-5"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              <div class="color">
                <a
                  href="./store.html"
                  class="nav-link fw-bold text-nowrap"
                  style="font-size: 1.2rem"
                  >점포찾기</a
                >
              </div>
            </div>
            <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
              <div class="color">
                <a
                  href="trackShipment.html"
                  class="nav-link fw-bold text-nowrap"
                  style="font-size: 1.2rem"
                  >배송조회</a
                >
              </div>
            </div>
            <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
              <div class="color">
                <a
                  href="./mypage.html"
                  class="nav-link fw-bold text-nowrap"
                  style="font-size: 1.2rem"
                  >MY</a
                >
              </div>
            </div>
          </div>
          <div class="text-end">
            <div class="row">
              <div class="col">
                <div
                  class="navbar-nav"
                  style="
                    font-family: 'Noto Sans KR', sans-serif;
                    font-size: 0.8rem;
                  "
                >
                  <div class="navbar" id="">
                    <a
                      href="login.html"
                      class="nav-link text-nowrap fw-bold"
                      style="font-size: 1.1rem; color: rgb(171, 171, 171)"
                      >로그인</a
                    >
                    <a
                      href="join_step1.html"
                      class="nav-link text-nowrap fw-bold"
                      style="font-size: 1.1rem; color: rgb(171, 171, 171)"
                      >회원가입</a
                    >
                  </div>
                </div>
              </div>
            </div>
            <div style="font-family: 'Noto Sans KR', sans-serif">
              <div class="dropdown dropstart">
                <a
                  href=""
                  class="text-dark dropdown-toggle"
                  style="text-decoration: none"
                  data-bs-toggle="dropdown"
                >
                  <span
                    class="color material-symbols-outlined"
                    style="font-size: 40px"
                  >
                    segment
                  </span>
                </a>
                <!-- 사이드바 메뉴 -->
                <div
                  class="dropdown-menu shadow-lg p-5"
                  style="
                    width: 500px;
                    border: 3px solid rgb(55, 210, 67);
                    border-radius: 20px 20px;
                    font-size: 1.2rem;
                  "
                >
                  <div class="row">
                    <ul class="col">
                      <a
                        href=""
                        class="dropdown-item dropdown-submenu01 fw-bold"
                      >
                        예약하기
                      </a>
                      <!-- 예약하기 상세 메뉴 -->
                      <div
                        class="dropdown-menu ps-2 pe-2"
                        style="font-size: 0.8rem"
                      >
                        <a
                          href="./termsForHome.html"
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >방문택배접수</a
                        >
                        <a
                          href="./termsForHomeBulk.html"
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >다량접수</a
                        >
                        <a
                          href=""
                          class="text-dark"
                          style="text-decoration: none"
                          >프리미엄</a
                        >
                      </div>

                      <div class="pt-3">&nbsp;</div>

                      <a
                        href=""
                        class="dropdown-item dropdown-submenu02 fw-bold"
                      >
                        예약내역 조회
                      </a>
                      <!-- 예약내역 조회 상세 메뉴 -->
                      <div
                        class="dropdown-menu ps-2 pe-2"
                        style="font-size: 0.8rem"
                      >
                        <a
                          href=""
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >홈 프리미엄</a
                        >
                        <a
                          href=""
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >홈 일반</a
                        >
                      </div>

                      <div class="pt-3">&nbsp;</div>

                      <a
                        href=""
                        class="dropdown-item dropdown-submenu03 fw-bold"
                      >
                        이용안내
                      </a>
                      <!-- 이용안내 상세 메뉴 -->
                      <div
                        class="dropdown-menu ps-2 pe-2"
                        style="font-size: 0.8rem"
                      >
                        <a
                          href="./guideHome.html"
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >택배 이용안내</a
                        >
                        <a
                          href="./guidePackaging.html"
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >포장안내</a
                        >
                        <a
                          href="./guideImpossible.html"
                          class="text-dark"
                          style="text-decoration: none"
                          >이용불가 상품</a
                        >
                      </div>

                      <div class="pt-3">&nbsp;</div>

                      <a
                        href="./trackShipment.html"
                        class="dropdown-item fw-bold"
                        >배송조회</a
                      >

                      <div class="pt-3">&nbsp;</div>

                      <a
                        href=""
                        class="dropdown-item dropdown-submenu04 fw-bold"
                      >
                        회원 혜택
                      </a>
                      <!-- 회원 혜택 상세 메뉴 -->
                      <div
                        class="dropdown-menu ps-2 pe-2"
                        style="font-size: 0.8rem"
                      >
                        <a
                          href="./gradeBenefit.html"
                          class="text-dark pe-2"
                          style="text-decoration: none"
                          >등급별 혜택</a
                        >
                      </div>
                    </ul>
                    <ul class="col">
                      <a href="./noticeList.html" class="dropdown-item fw-bold"
                        >공지사항</a
                      >
                      <div class="pt-3">&nbsp;</div>
                      <a href="/faq/faqList" class="dropdown-item fw-bold"
                        >고객센터</a
                      >
                      <div class="pt-3">&nbsp;</div>
                      <a href="./store.html" class="dropdown-item fw-bold"
                        >점포찾기</a
                      >
                      <div class="pt-3">&nbsp;</div>

                      <a href="./eventList.html" class="dropdown-item fw-bold"
                        >이벤트</a
                      >
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <script
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
    <script>
      $(document).ready(function () {
        $(".dropdown-submenu01").on("mouseover", function (e) {
          $(this).next("div").toggle();
        });
        $(".dropdown-submenu02").on("mouseover", function (e) {
          $(this).next("div").toggle();
        });
        $(".dropdown-submenu03").on("mouseover", function (e) {
          $(this).next("div").toggle();
        });
        $(".dropdown-submenu04").on("mouseover", function (e) {
          $(this).next("div").toggle();
        });
      });
    </script>

    


    <!-- 여기까지 navbar -->