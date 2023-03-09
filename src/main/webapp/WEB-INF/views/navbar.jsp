<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
      <!-- 여기부터 navbar -->
      <header class="">
        <nav class="navbar navbar-dark navbar-expand-sm pb-0">
          <div class="container-fluid border-bottom d-flex justify-content-between" style="height: 130px">
            <div class="row d-flex align-items-center">
              <div class="col">
                <a href="/index" class="navbar-brand ms-5">
                  <div style="font-family: 'Zen Dots', cursive; color: rgb(76, 183, 86)">
                    <span class="fst-italic fw-bold ms-2 fs-4">POST</span>
                    <span class="material-symbols-outlined fw-bold align-middle">
                      local_shipping
                    </span>
                  </div>
                </a>
              </div>
              <sec:authentication property="principal" var="userDetailsBean" />
              <div class="col ms-5" style="font-family: 'Noto Sans KR', sans-serif">
                <div class="color">
                  <a href="/company/store" class="nav-link fw-bold text-nowrap" style="font-size: 1.2rem">점포찾기</a>
                </div>
              </div>
              <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                <div class="color">
                  <a href="/delivery/trackShipment" class="nav-link fw-bold text-nowrap"
                    style="font-size: 1.2rem">배송조회</a>
                </div>
              </div>
              <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                <div class="color">
                  <sec:authorize access="isAuthenticated()">
                    <form action="/mypage/myinfoPass" method="post">
                      <input type="hidden" value="${userDetailsBean.user_Uid}" name="USER_UID" />
                      <button class="btn nav-link fw-bold text-nowrap" style="font-size: 1.2rem">
                        MY
                      </button>
                    </form>
                  </sec:authorize>
                </div>
              </div>
              <sec:authorize access="hasRole('ROLE_ADMIN')">
                <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                  <div class="color">
                    <a href="/admin/adminBoard" class="nav-link fw-bold text-nowrap" style="font-size: 1.2rem">게시판
                      관리</a>
                  </div>
                </div>
                <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                  <div class="color">
                    <a href="/admin/adminUsers" class="nav-link fw-bold text-nowrap" style="font-size: 1.2rem">유저 관리</a>
                  </div>
                </div>
                <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                  <div class="color">
                    <a href="/admin/adminInquiry/1" class="nav-link fw-bold text-nowrap" style="font-size: 1.2rem">1대1
                      문의 관리</a>
                  </div>
                </div>
                <div class="col" style="font-family: 'Noto Sans KR', sans-serif">
                  <div class="color">
                    <a href="/admin/adminManagementShipment/" class="nav-link fw-bold text-nowrap"
                      style="font-size: 1.2rem">배송 관리</a>
                  </div>
                </div>
              </sec:authorize>
            </div>
            <div class="text-end">
              <div class="row">
                <div class="col">
                  <div class="navbar-nav" style="font-family: 'Noto Sans KR', sans-serif; font-size: 0.8rem">
                    <div class="navbar" id="">
                      <sec:authorize access="isAnonymous()">
                        <%-- anonymous인지 확인(로그인이 안 되어 있는지) --%> <%-- 로그인이 안되있으므로 로그인 링크 띄움 --%>
                            <a href="/common/login" class="nav-link text-nowrap fw-bold"
                              style="font-size: 1.1rem; color: rgb(171, 171, 171)">로그인</a>
                            <a href="/common/join_step1" class="nav-link text-nowrap fw-bold"
                              style="font-size: 1.1rem; color: rgb(171, 171, 171)">회원가입</a>
                      </sec:authorize>
                      <%-- 로그인이 되어있을때 --%>
                        <sec:authorize access="isAuthenticated()">
                          <span>
                            <span class="fw-bold" style="font-size: 1.1rem">${userDetailsBean.memberName}</span>
                            <span style="font-size: 1rem"> 님 반갑습니다 </span>
                          </span>
                          <form method="post" action="/logout">
                            <button class="btn text-nowrap fw-bold"
                              style="font-size: 1.1rem; color: rgb(171, 171, 171)">
                              Logout
                            </button>
                          </form>
                        </sec:authorize>
                    </div>
                  </div>
                </div>
              </div>
              <div style="font-family: 'Noto Sans KR', sans-serif">
                <div class="dropdown dropstart">
                  <a href="" class="text-dark dropdown-toggle" style="text-decoration: none" data-bs-toggle="dropdown">
                    <span class="color material-symbols-outlined" style="font-size: 40px">
                      segment
                    </span>
                  </a>
                  <!-- 사이드바 메뉴 -->
                  <div class="dropdown-menu shadow-lg p-5" style="
                width: 500px;
                border: 3px solid rgb(55, 210, 67);
                border-radius: 20px 20px;
                font-size: 1.2rem;
              ">
                    <div class="row">
                      <ul class="col">
                        <a href="" class="dropdown-item dropdown-submenu01 fw-bold">
                          예약하기
                        </a>
                        <!-- 예약하기 상세 메뉴 -->
                        <div class="dropdown-menu ps-2 pe-2" style="font-size: 0.8rem">
                          <a href="/home/termsForHome" class="text-dark pe-2" style="text-decoration: none">방문택배접수</a>
                          <a href="/home/termsForHomeBulk" class="text-dark pe-2" style="text-decoration: none">다량접수</a>
                          <a href="" class="text-dark" style="text-decoration: none">프리미엄</a>
                        </div>

                        <div class="pt-3">&nbsp;</div>

                        <a href="" class="dropdown-item dropdown-submenu02 fw-bold">
                          예약내역 조회
                        </a>
                        <!-- 예약내역 조회 상세 메뉴 -->
                        <div class="dropdown-menu ps-2 pe-2" style="font-size: 0.8rem">
                          <a href="" class="text-dark pe-2" style="text-decoration: none">홈 프리미엄</a>
                          <a href="" class="text-dark pe-2" style="text-decoration: none">홈 일반</a>
                        </div>

                        <div class="pt-3">&nbsp;</div>

                        <a href="" class="dropdown-item dropdown-submenu03 fw-bold">
                          이용안내
                        </a>
                        <!-- 이용안내 상세 메뉴 -->
                        <div class="dropdown-menu ps-2 pe-2" style="font-size: 0.8rem">
                          <a href="/guide/guideHome" class="text-dark pe-2" style="text-decoration: none">택배 이용안내</a>
                          <a href="/guide/guidePackaging" class="text-dark pe-2" style="text-decoration: none">포장안내</a>
                          <a href="/guide/guideImpossible" class="text-dark" style="text-decoration: none">이용불가 상품</a>
                        </div>

                        <div class="pt-3">&nbsp;</div>

                        <a href="/delivery/trackShipment" class="dropdown-item fw-bold">배송조회</a>

                        <div class="pt-3">&nbsp;</div>

                        <a href="" class="dropdown-item dropdown-submenu04 fw-bold">
                          회원 혜택
                        </a>
                        <!-- 회원 혜택 상세 메뉴 -->
                        <div class="dropdown-menu ps-2 pe-2" style="font-size: 0.8rem">
                          <a href="/grade/gradeBenefit" class="text-dark pe-2" style="text-decoration: none">등급별 혜택</a>
                        </div>
                      </ul>
                      <ul class="col">
                        <a href="/cs/noticeList/1" class="dropdown-item fw-bold">공지사항</a>
                        <div class="pt-3">&nbsp;</div>
                        <a href="/customer/faqList" class="dropdown-item fw-bold">고객센터</a>
                        <div class="pt-3">&nbsp;</div>
                        <a href="/company/store" class="dropdown-item fw-bold">점포찾기</a>
                        <div class="pt-3">&nbsp;</div>

                        <a href="/event/eventList" class="dropdown-item fw-bold">이벤트</a>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </header>
      <!-- 여기까지 navbar -->
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