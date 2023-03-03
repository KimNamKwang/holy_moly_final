<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>고객센터 - FAQ</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
          rel="stylesheet" />
        <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <style>
          .text-green {
            color: rgb(55, 210, 67);
          }

          input:focus {
            outline: 1px solid rgb(55, 210, 67);
          }
        </style>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"
          integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
      </head>

      <body style="z-index: 1; font-family: 'Noto Sans KR', sans-serif">
        <jsp:include page="../navbar.jsp" />

        <div class="container text-center">
          <div class="fs-1 fw-bold p-5">고객센터</div>
          <ul class="d-flex justify-content-center list-unstyled">
            <li class="fs-3 fw-bold pe-5">
              <a href="" class="text-decoration-none text-dark"> FAQ </a>
            </li>
            <li class="fs-3 fw-bold ps-5" style="opacity: 0.5">
              <a href="/customer/inquiry" class="text-decoration-none text-dark">
                1:1문의
              </a>
            </li>
          </ul>
        </div>
        <div class="container-fluid" style="background-color: rgb(249, 249, 249); padding-bottom: 200px">
          <div class="container d-flex justify-content-center">
            <div class="row">
              <div class="col-2">
                <ul class="list-unstyled pt-5" style="font-size: 1.2rem">
                  <li class="fw-bold">
                    <a href="" class="text-dark" style="text-decoration: none">전체</a>
                  </li>
                  <li style="margin-top: 40px">
                    <a href="" style="text-decoration: none; color: rgb(80, 83, 80)">접수문의</a>
                  </li>
                  <li style="margin-top: 40px">
                    <a href="" style="text-decoration: none; color: rgb(80, 83, 80)">배송문의</a>
                  </li>
                  <li style="margin-top: 40px">
                    <a href="" style="text-decoration: none; color: rgb(80, 83, 80)">지도문의</a>
                  </li>
                  <li style="margin-top: 40px">
                    <a href="" style="text-decoration: none; color: rgb(80, 83, 80)">사고문의</a>
                  </li>
                </ul>
              </div>
              <div class="col-10 d-flex row justify-content-center text-center p-0">
                <div class="border p-4 mt-5" style="
                border-radius: 20px;
                background-color: white;
                width: 710px;
                margin: 0px 310px 0px 130px;
              ">
                  <div>
                    <input type="text" xn class="w-100 border border-secondary border-opacity-10 p-3"
                      style="height: 50px; border-radius: 10px" name="search" placeholder="검색어" />
                  </div>
                  <div class="pt-3 mt-4">
                    <ul class="list-unstyled">

                      <c:forEach items="${resultMap.FAQList}" var="_FAQList" varStatus="loop">
                        <li class="row">
                          <div class="col text-start" style="color: rgb(81, 84, 81); font-size: 1.1rem">
                            <span class="p-1 me-1" style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        ">
                              택배서비스
                              ${_FAQList.FAQ_TYPE_DESCRIPTION}
                            </span>
                            ${_FAQList.TITLE}
                          </div>
                          <div class="col-auto">
                            <a class="text-dark" href="#collapseContent01" data-bs-toggle="collapse"><span
                                class="material-symbols-outlined">
                                expand_more
                              </span></a>
                          </div>
                          <div class="row collapse text-start pt-4" id="collapseContent01"
                            style="color: rgb(108, 110, 108); font-size: 1.1rem">
                            <div class="col-2">&nbsp;</div>
                            <div class="col">
                              <div class="pb-5">
                                ${_FAQList.REPLY_FOR_FAQ}
                              </div>
                            </div>
                          </div>
                        </li>
                      </c:forEach>
                      <div class="mt-2 pb-3">
                        <ul class="pagination justify-content-center">
                          <li class="page-item">
                            <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#"
                              aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only"></span>
                            </a>
                          </li>

                          <li class="page-item">
                            <a class="page-link text-dark border-0" href="#">1</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#">2</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#">3</a>
                          </li>

                          <li class="page-item">
                            <a class="page-link border-0" style="color: rgb(180, 180, 180)" href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only"></span>
                            </a>
                          </li>
                        </ul>
                      </div>
                      <%-- <li class="row pt-4">
                        <div class="col text-start" style="color: rgb(81, 84, 81); font-size: 1.1rem">
                          <span class="p-1 me-1" style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        ">
                            택배서비스
                          </span>
                          홈택배 예약정보를 수정하고 싶어요
                        </div>
                        <div class="col-auto">
                          <a class="text-dark" href="#collapseContent02" data-bs-toggle="collapse"><span
                              class="material-symbols-outlined">
                              expand_more
                            </span></a>
                        </div>
                        <div class="row collapse text-start pt-4" id="collapseContent02"
                          style="color: rgb(108, 110, 108); font-size: 1.1rem">
                          <div class="col-2">&nbsp;</div>
                          <div class="col">
                            <div>예약정보 수정은 불가합니다.</div>
                            <div class="pb-5">
                              예약 취소 후 재접수로 이용 가능하며, 취소 불가한 경우
                              고객센터(1566-1025)로 연락바랍니다.
                            </div>
                          </div>
                        </div>
                        </li>
                        <li class="row pt-4">
                          <div class="col text-start" style="color: rgb(81, 84, 81); font-size: 1.1rem">
                            <span class="p-1 me-1" style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        ">
                              위치서비스
                            </span>
                            인터넷 지도 위치가 잘못 되어 있는데요?
                          </div>
                          <div class="col-auto">
                            <a class="text-dark" href="#collapseContent03" data-bs-toggle="collapse"><span
                                class="material-symbols-outlined">
                                expand_more
                              </span></a>
                          </div>
                          <div class="row collapse text-start pt-4" id="collapseContent03"
                            style="color: rgb(108, 110, 108); font-size: 1.1rem">
                            <div class="col-2">&nbsp;</div>
                            <div class="col">
                              <div class="pb-5">
                                현재 지도 상 위치가 정확하게 파악이 되지 않았습니다.
                                빠른 시일 내에 수정하여 반영하겠습니다.
                              </div>
                            </div>
                          </div>
                        </li>
                        <li class="row pt-4">
                          <div class="col text-start" style="color: rgb(81, 84, 81); font-size: 1.1rem">
                            <span class="p-1 me-1" style="
                          background-color: rgb(242, 255, 216);
                          border-radius: 20px;
                          color: rgb(55, 210, 77);
                          font-size: 0.9rem;
                        ">
                              택배서비스
                            </span>
                            화물이 분실(파손)되면 어떻게 해야 하죠?
                          </div>
                          <div class="col-auto">
                            <a class="text-dark" href="#collapseContent04" data-bs-toggle="collapse"><span
                                class="material-symbols-outlined">
                                expand_more
                              </span></a>
                          </div>
                          <div class="row collapse text-start pt-4" id="collapseContent04"
                            style="color: rgb(108, 110, 108); font-size: 1.1rem">
                            <div class="col-2">&nbsp;</div>
                            <div class="col">
                              <div>
                                화물이 분실 혹은 파손 되었을 경우에는 고객센터로
                                문의로 문의 부탁 드리겠습니다.
                              </div>
                              <div>
                                특히, 파손 시에는 화물의 포장상태와 파손내용을
                                택배사에서 확인할 수 있도록 그대로 유지한 상태에서
                                연락을 주시면, 사진이나 방문확인 등을 통해서
                                택배표준약관의 기준에 준하여 신속히 처리하여 드립니다.
                              </div>
                              <div class="pb-5">
                                단, 품목과 물품가액 고객 정보 등을 거짓 기재한 경우와
                                파손면책 동의 건, 포장이 충분하지 않은 건은 고객님
                                귀책이 있는 사안으로 빠른 처리가 어려울 수 있습니다.
                              </div>
                            </div>
                          </div>
                        </li>
                        --%>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <jsp:include page="../footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
      </body>

      </html>