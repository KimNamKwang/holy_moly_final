<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>고객문의 작성</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <style>
      input:focus,
      textarea:focus,
      select:focus {
        outline: 1px solid rgb(55, 210, 67);
      }

      input::-webkit-outer-spin-button,
      input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
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
    <div class="container text-center">
      <div class="fs-1 fw-bold p-5">고객센터</div>
      <ul class="d-flex justify-content-center list-unstyled">
        <li class="fs-3 fw-bold pe-5" style="opacity: 0.5">
          <a
            href="/customer/faqList"
            id="how_to_use"
            class="text-decoration-none text-dark"
          >
            FAQ
          </a>
        </li>
        <li class="fs-3 fw-bold ps-5" id="pee_notice">
          <a href="/customer/inquiry" class="text-decoration-none text-dark">
            1:1문의
          </a>
        </li>
      </ul>
    </div>
    <sec:authentication property="principal" var="userDetailsBean" />
    <div
      class="container-fluid"
      style="background-color: rgb(249, 249, 249); padding-bottom: 200px"
    >
      <form
        action="/customer/insertinquiry"
        onsubmit="alertFunction()"
        id="modalToggle"
      >
        <div class="d-flex row justify-content-center">
          <div style="width: 710px">
            <div
              class="border p-4 mt-5"
              style="border-radius: 20px; background-color: white"
            >
              <%-- hidden으로 넘기는 value들 --%>
              <input
                type="hidden"
                name="USER_UID"
                value="${userDetailsBean.user_Uid}"
              />
              <%-- 일단 등록하면 문의중으로 넣고 추후에 관리자가 답변등록시
              답변완료로 update되게. --%>
              <input
                type="hidden"
                name="PROGRESS_STATUS_UID"
                value="INQ_PROG_STAT_IN"
              />
              <%-- 여기까지 hidden value --%>
              <table class="table align-middle table-borderless text-start">
                <tr>
                  <th style="vertical-align: top">이름</th>
                  <td>
                    <input
                      type="text"
                      class="w-100 border border-secondary border-opacity-25 p-3"
                      style="border-radius: 10px"
                      name="NAME"
                      id="userName"
                      value="${userDetailsBean.memberName}"
                      placeholder="이름"
                      required
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th style="vertical-align: top">이메일 주소</th>
                  <td>
                    <input
                      type="email"
                      class="w-100 border border-secondary border-opacity-25 p-3"
                      style="border-radius: 10px"
                      name="E_MAIL"
                      id="userEmail"
                      value="${userDetailsBean.e_mail}"
                      placeholder="이메일 주소"
                      required
                      readonly
                    />
                  </td>
                </tr>

                <tr>
                  <th class="text-nowrap" style="vertical-align: top">
                    전화번호
                  </th>
                  <td>
                    <input
                      type="number"
                      class="w-100 border border-secondary border-opacity-25 p-3"
                      style="border-radius: 10px"
                      name="PHONE"
                      id="userPhoneNumber"
                      value="${userDetailsBean.phone}"
                      placeholder="전화번호"
                      required
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th>문의 유형</th>
                  <td>
                    <select
                      class="w-100 border border-secondary border-opacity-25 p-3 text-center fw-bold"
                      style="border-radius: 10px"
                      name="INQUIRY_TYPE_UID"
                      id=""
                      required
                    >
                      <option value="" selected disabled required>
                        문의 유형
                      </option>
                      <option value="Q_SHIP">배송문의</option>
                      <option value="Q_GRADE">등급문의</option>
                      <option value="Q_COMPEN">사고보상처리</option>
                      <option value="Q_COMP_ELSE">기타/서비스불만</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th class="text-nowrap" style="vertical-align: top">
                    운송장 번호 (선택)
                  </th>
                  <td>
                    <div class="pb-1">
                      <input
                        type="text"
                        class="w-100 border border-secondary border-opacity-25 p-3"
                        style="border-radius: 10px"
                        name="TRACKING_NUMBER_FOR_INQUIRY"
                        id="TRACKING_NUMBER_FOR_INQUIRY"
                        placeholder="운송장 번호"
                      />
                    </div>
                    <sup class="text-secondary"
                      >*필수입력사항은 아닙니다. 다만 입력 시 답변에 도움이
                      됩니다.</sup
                    >
                  </td>
                </tr>
                <tr>
                  <th style="vertical-align: top">제목</th>
                  <td>
                    <input
                      type="text"
                      class="w-100 border border-secondary border-opacity-25 p-3"
                      style="border-radius: 10px"
                      name="INQUIRY_TITLE"
                      id="INQUIRY_TITLE"
                      placeholder="제목"
                      required
                    />
                  </td>
                </tr>
                <tr>
                  <th style="vertical-align: top">내용</th>
                  <td>
                    <textarea
                      class="w-100 border border-secondary border-opacity-25 p-3"
                      style="resize: none; height: 200px; border-radius: 10px"
                      name="INQUIRY_CONTENT"
                      id="INQUIRY_CONTENT"
                      placeholder="내용"
                      required
                    ></textarea>
                  </td>
                </tr>
              </table>
              <input
                type="checkbox"
                class="form-check-input me-1"
                style="border-radius: 50%; width: 20px; height: 20px"
                name=""
                id="agree"
                required
              />
              <label for="agree" class="form-check-label">
                <a
                  href="#modalTermsForUse"
                  class="text-decoration-none text-dark"
                  data-bs-toggle="modal"
                >
                  개인정보 수집 및 활용 동의 (필수)
                </a>
              </label>
            </div>
            <div class="row">
              <div class="col mt-3">
                <a
                  href="/customer/inquiry"
                  class="btn btn-sm"
                  style="
                    border-radius: 50px;
                    background-color: rgb(165, 165, 165);
                    color: white;
                  "
                  >BACK</a
                >
              </div>
              <div class="col text-end mt-3">
                <button
                  class="btn btn-lg text-light fw-bold"
                  style="
                    background-color: rgb(55, 210, 67);
                    border-radius: 50%;
                    font-size: 1.3rem;
                  "
                >
                  >
                </button>
              </div>
              <!-- 모달창 -->
              <div class="modal fade" id="submitModal">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content pt-5 pb-5">
                    <div class="modal-title text-center">
                      <div class="pb-4 fw-bold">1:1문의가 등록되었습니다.</div>
                      <button
                        class="btn"
                        data-bs-dismiss="modal"
                        style="
                          background-color: rgb(55, 210, 67);
                          color: white;
                          width: 8rem;
                        "
                      >
                        확인
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 모달창 마지막 -->
            </div>
          </div>
        </div>
      </form>

      <div class="modal fade" id="modalTermsForUse">
        <div class="modal-dialog">
          <div
            class="modal-content p-4"
            style="border-radius: 15px 15px; width: 40rem; height: 50rem"
          >
            <div class="modal-header d-flex justify-content-center">
              <div class="fs-4 fw-bold">개인정보 수집 및 활용</div>
            </div>
            <div class="modal-body">
              <div>
                <div class="pb-1" style="font-size: 0.9rem">
                  수집·이용 목적 : 1대1문의
                </div>
                <div class="pb-1" style="font-size: 0.9rem">
                  수집항목 : 이름, 이메일 주소, 휴대폰 번호, 비밀번호,
                  운송장번호
                </div>
                <div class="fs-5 fw-bold">보유기간 : 3년</div>
              </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button
                class="btn"
                style="
                  background-color: rgb(55, 210, 67);
                  color: white;
                  width: 150px;
                  height: 45px;
                  border-radius: 9px 9px;
                "
                data-bs-dismiss="modal"
              >
                확인
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script>
      function alertFunction() {
        alert("1:1 문의가 등록되었습니다.");
      }
    </script>
  </body>
</html>
