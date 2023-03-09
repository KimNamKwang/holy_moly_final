<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- 여기부터 navbar -->
<header style="background-color: whigt">
  <nav class="navbar navbar-dark navbar-expand-sm pb-0">
    <div
      class="container-fluid border-bottom d-flex justify-content-between pt-3 pb-3"
      style="height: auto"
    >
      <div class="row d-flex align-items-center w-100">
        <div class="col-auto">
          <a href="/index" class="navbar-brand ms-5">
            <div
              style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)"
            >
              <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
              <span class="material-symbols-outlined fw-bold align-middle">
                local_shipping
              </span>
            </div>
          </a>
        </div>

        <div class="col ps-5">
          <div class="row">
            <sec:authentication property="principal" var="userDetailsBean" />
            <div
              class="col-xl-2 col-md-4 col-sm-6"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              <div class="color">
                <a
                  href="/company/store"
                  class="nav-link fw-bold text-nowrap"
                  style="font-size: 1.2rem"
                  >점포찾기</a
                >
              </div>
            </div>
            <div
              class="col-xl-2 col-md-4 col-sm-6"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              <div class="color">
                <a
                  href="/delivery/trackShipment"
                  class="nav-link fw-bold text-nowrap"
                  style="font-size: 1.2rem"
                  >배송조회</a
                >
              </div>
            </div>
            <div
              class="col-xl-1 col-md-4 col-sm-6"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              <div class="color">
                <sec:authorize access="isAuthenticated()">
                  <form action="/mypage/myinfoPass" method="post">
                    <input
                      type="hidden"
                      value="${userDetailsBean.user_Uid}"
                      name="USER_UID"
                    />
                    <button
                      class="btn nav-link fw-bold text-nowrap"
                      style="font-size: 1.2rem"
                    >
                      MY
                    </button>
                  </form>
                </sec:authorize>
              </div>
            </div>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
              <div
                class="col-xl-2 col-md-6 col-sm-6"
                style="font-family: 'Noto Sans KR', sans-serif"
              >
                <div class="color">
                  <a
                    href="/admin/adminBoard"
                    class="nav-link fw-bold text-nowrap"
                    style="font-size: 1.2rem"
                    >게시판 관리</a
                  >
                </div>
              </div>
              <div
                class="col-xl-2 col-md-6 col-sm-6"
                style="font-family: 'Noto Sans KR', sans-serif"
              >
                <div class="color">
                  <a
                    href="/admin/adminUsers/1"
                    class="nav-link fw-bold text-nowrap"
                    style="font-size: 1.2rem"
                    >사용자 관리</a
                  >
                </div>
              </div>
              <div
                class="col-xl-2 col-md-6 col-sm-6"
                style="font-family: 'Noto Sans KR', sans-serif"
              >
                <div class="color">
                  <a
                    href="/admin/adminInquiry/1"
                    class="nav-link fw-bold text-nowrap"
                    style="font-size: 1.2rem"
                    >1대1 문의 관리</a
                  >
                </div>
              </div>
              <div
                class="col-xl-1 col-md-6 col-sm-6"
                style="font-family: 'Noto Sans KR', sans-serif"
              >
                <div class="color">
                  <a
                    href="/admin/adminManagementShipment/1"
                    class="nav-link fw-bold text-nowrap"
                    style="font-size: 1.2rem"
                    >배송관리</a
                  >
                </div>
              </div>
            </sec:authorize>
          </div>
        </div>
        <div class="col">
          <div
            class="navbar-nav d-flex justify-content-end"
            style="font-family: 'Noto Sans KR', sans-serif; font-size: 0.8rem"
          >
            <div class="navbar flex-column text-end" id="">
              <div>
                <sec:authorize access="isAnonymous()">
                  <%-- anonymous인지 확인(로그인이 안 되어 있는지) --%> <%--
                  로그인이 안되있으므로 로그인 링크 띄움 --%>
                  <div class="row">
                    <div class="col pe-0">
                      <a
                        href="/common/login"
                        class="nav-link text-nowrap fw-bold"
                        style="font-size: 1.1rem; color: rgb(171, 171, 171)"
                        >로그인</a
                      >
                    </div>
                    <div class="col-auto">
                      <a
                        href="/common/join_step1"
                        class="nav-link text-nowrap fw-bold"
                        style="font-size: 1.1rem; color: rgb(171, 171, 171)"
                        >회원가입</a
                      >
                    </div>
                  </div>
                </sec:authorize>
                <%-- 로그인이 되어있을때 --%>
                <sec:authorize access="isAuthenticated()">
                  <div class="row d-flex align-items-center">
                    <div class="col">
                      <span>
                        <span class="fw-bold" style="font-size: 1.1rem"
                          >${userDetailsBean.memberName}</span
                        >
                        <span style="font-size: 1rem"> 님 반갑습니다 </span>
                      </span>
                    </div>
                    <div class="col-auto">
                      <form method="post" action="/logout">
                        <button
                          class="btn text-nowrap fw-bold pe-0"
                          style="font-size: 1.1rem; color: rgb(171, 171, 171)"
                        >
                          Logout
                        </button>
                      </form>
                    </div>
                  </div>
                </sec:authorize>
              </div>
              <div
                style="font-family: 'Noto Sans KR', sans-serif"
                class="w-100"
              >
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
                        <span id="submenu01_span">
                          <a
                            href=""
                            id="submenu01"
                            class="dropdown-item dropdown-submenu01 fw-bold"
                          >
                            예약하기
                          </a>
                          <!-- 예약하기 상세 메뉴 -->
                          <div
                            id="dropdown_submenu01"
                            class="dropdown-menu ps-2 pe-2"
                            style="font-size: 0.8rem"
                          >
                            <a
                              href="/home/termsForHome"
                              class="text-dark pe-2"
                              style="text-decoration: none"
                              >방문택배접수</a
                            >
                            <a
                              href="/home/termsForHomeBulk"
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
                        </span>

                        <div class="pt-3">&nbsp;</div>

                        <span id="submenu02_span">
                          <a
                            href=""
                            id="submenu02"
                            class="dropdown-item dropdown-submenu02 fw-bold"
                          >
                            예약내역 조회
                          </a>
                          <!-- 예약내역 조회 상세 메뉴 -->
                          <div
                            id="dropdown_submenu02"
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
                        </span>

                        <div class="pt-3">&nbsp;</div>

                        <span id="submenu03_span">
                          <a
                            href=""
                            id="submenu03"
                            class="dropdown-item dropdown-submenu03 fw-bold"
                          >
                            이용안내
                          </a>
                          <!-- 이용안내 상세 메뉴 -->
                          <div
                            id="dropdown_submenu03"
                            class="dropdown-menu ps-2 pe-2"
                            style="font-size: 0.8rem"
                          >
                            <a
                              href="/guide/guideHome"
                              class="text-dark pe-2"
                              style="text-decoration: none"
                              >택배 이용안내</a
                            >
                            <a
                              href="/guide/guidePackaging"
                              class="text-dark pe-2"
                              style="text-decoration: none"
                              >포장안내</a
                            >
                            <a
                              href="/guide/guideImpossible"
                              class="text-dark"
                              style="text-decoration: none"
                              >이용불가 상품</a
                            >
                          </div>
                        </span>

                        <div class="pt-3">&nbsp;</div>

                        <a
                          href="/delivery/trackShipment"
                          class="dropdown-item fw-bold"
                          >배송조회</a
                        >

                        <div class="pt-3">&nbsp;</div>

                        <span id="submenu04_span">
                          <a
                            href=""
                            id="submenu04"
                            class="dropdown-item dropdown-submenu04 fw-bold"
                          >
                            회원 혜택
                          </a>
                          <!-- 회원 혜택 상세 메뉴 -->
                          <div
                            id="dropdown_submenu04"
                            class="dropdown-menu ps-2 pe-2"
                            style="font-size: 0.8rem"
                          >
                            <a
                              href="/grade/gradeBenefit"
                              class="text-dark pe-2"
                              style="text-decoration: none"
                              >등급별 혜택</a
                            >
                          </div>
                        </span>
                      </ul>
                      <ul class="col">
                        <a href="/cs/noticeList/1" class="dropdown-item fw-bold"
                          >공지사항</a
                        >
                        <div class="pt-3">&nbsp;</div>
                        <a
                          href="/customer/faqList"
                          class="dropdown-item fw-bold"
                          >고객센터</a
                        >
                        <div class="pt-3">&nbsp;</div>
                        <a href="/company/store" class="dropdown-item fw-bold"
                          >점포찾기</a
                        >
                        <div class="pt-3">&nbsp;</div>

                        <a
                          href="/event/eventList/1"
                          class="dropdown-item fw-bold"
                          >이벤트</a
                        >
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
</header>
<script>
  $(document).ready(function () {
    $("#submenu01").mouseover(function () {
      $(this).next("div").css("display", "block");
    });
    $("#submenu01_span").mouseleave(function () {
      $("#dropdown_submenu01").css("display", "none");
    });
    $("#submenu02").mouseover(function () {
      $(this).next("div").css("display", "block");
    });
    $("#submenu02_span").mouseleave(function () {
      $("#dropdown_submenu02").css("display", "none");
    });
    $("#submenu03").mouseover(function () {
      $(this).next("div").css("display", "block");
    });
    $("#submenu03_span").mouseleave(function () {
      $("#dropdown_submenu03").css("display", "none");
    });
    $("#submenu04").mouseover(function () {
      $(this).next("div").css("display", "block");
    });
    $("#submenu04_span").mouseleave(function () {
      $("#dropdown_submenu04").css("display", "none");
    });
  });
</script>
<!-- 여기까지 navbar -->
