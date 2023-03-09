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
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main>
      <div class="container" style="font-family: 'Noto Sans KR', sans-serif">
        <div class="fs-1 fw-bold mt-5 mb-5">회사소개</div>
        <div class="d-flex">
          <div
            class="border rounded-4 p-4"
            style="width: 50rem; margin-bottom: 130px"
          >
            <div class="d-flex align-items-center">
              <div>
                <img src="/resources/images/로고(투명).png" width="150" />
              </div>
              <div class="align-items-center">
                <div class="fs-4 fw-bold">(주)포스트네트웍스</div>
                <div>6개월 차 업체 • 택배 배송</div>
              </div>
            </div>
            <div class="ps-4">
              <div class="d-flex mb-4">
                <div class="text-secondary fw-bold" style="width: 6rem">
                  소개글
                </div>
                <div>
                  <p class="fw-bold mb-0">
                    POST는 방문 택배에 특화된 회사로 새롭게 출발하였습니다.
                  </p>
                  끊임없이 변화 발전하여 고객사와 소비자 여러분의 든든한
                  조력자가<br />
                  되도록 노력하겠습니다.
                </div>
              </div>
              <div class="d-flex mb-4">
                <div class="text-secondary fw-bold" style="width: 6rem">
                  제공서비스
                </div>
                <div>택배, 배송, 물류</div>
              </div>
              <div class="d-flex">
                <div>
                  <img
                    src="/resources/images/트럭 이미지.png"
                    width="200"
                    alt=""
                  />
                </div>
                <div>
                  <img
                    src="/resources/images/다량택배.png"
                    width="200"
                    alt=""
                  />
                </div>
                <div>
                  <img
                    src="/resources/images/고객센터.png"
                    width="200"
                    alt=""
                  />
                </div>
              </div>
            </div>
          </div>
          <div>
            <div class="ms-5">
              <table class="table align-middle">
                <tbody class="p-3">
                  <tr style="height: 4rem">
                    <td class="text-nowrap">
                      <span class="material-icons align-middle">
                        apartment
                      </span>
                      설립년도
                    </td>
                    <td class="text-nowrap">2023</td>
                  </tr>
                  <tr style="height: 4rem">
                    <td class="text-nowrap">
                      <span class="material-icons align-middle"> person </span>
                      대표자
                    </td>
                    <td class="text-nowrap">김남광</td>
                  </tr>
                  <tr style="height: 4rem">
                    <td class="text-nowrap">
                      <span class="material-icons align-middle"> group </span>
                      회사규모
                    </td>
                    <td class="text-nowrap">직원 4명</td>
                  </tr>
                  <tr style="height: 4rem">
                    <td class="text-nowrap">
                      <span class="material-icons align-middle">
                        location_on
                      </span>
                      회사주소
                    </td>
                    <td class="text-nowrap">
                      서울특별시 광진구 광나루로56길,85 <br />24층 1-13
                    </td>
                  </tr>
                  <tr style="height: 4rem">
                    <td class="text-nowrap">
                      <span class="material-icons align-middle">
                        local_shipping
                      </span>
                      업종
                    </td>
                    <td class="text-nowrap">화물운송주선사업</td>
                  </tr>
                </tbody>
              </table>
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
