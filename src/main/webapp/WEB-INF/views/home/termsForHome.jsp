<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>택배조회</title>
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

    <!-- 구글폰트 링크 -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
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
    <br />
    <br />
    <br />
    <jsp:include page="../navbar.jsp" />
    <main style="font-family: 'Noto Sans KR', sans-serif">
      <form action="/home/reservationForHome" method="get">
        <div class="container-fluid">
          <ul class="list-unstyled d-flex justify-content-center">
            <li
              id="reserv_for_home"
              class="pb-4 me-2"
              style="
                border-bottom: 3px solid rgb(55, 210, 67);
                width: 330px;
                text-align: center;
              "
            >
              <div class="">
                <a href="#" class="text-decoration-none text-dark fs-5"
                  >일반홈택배 예약하기</a
                >
              </div>
            </li>

            <li
              id="reserv_check_and_cancel"
              class="pb-4 ms-2"
              style="opacity: 0.5; width: 330px; text-align: center"
            >
              <a href="#" class="text-decoration-none text-dark fs-5"
                >예약확인 및 취소</a
              >
            </li>
          </ul>
          <div id="boxForChange" class="mt-5 justify-content-center"></div>

          <div id="agreement_box" class="mt-5 justify-content-center">
            <div
              class="all_check mb-5 d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.5; border-radius: 50%"
                type="checkbox"
                id="check_evt1"
                value="Y"
                name="agree"
                onclick="selectAll(this)"
              /><label for="check_evt1">
                <span class="ps-2"
                  >이용약관, 개인정보 처리방침, 개인정보 취급위탁, 만14세이상에
                  모두 동의합니다.</span
                ></label
              >
            </div>
            <div
              class="d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.3; border-radius: 50%"
                type="checkbox"
                id="check_evt2"
                value="Y"
                required
                name="agree"
              /><label for="check_evt2">
                <span class="ps-2">[필수] 택배이용약관</span>
              </label>
            </div>

            <div class="d-flex justify-content-center mt-3">
              <div
                style="
                  overflow: scroll;
                  width: 80%;
                  height: 250px;
                  padding: 10px;
                  border: 0.1px solid rgb(221, 221, 221);
                "
              >
                <h4><strong>제 1 장 총칙</strong></h4>

                <h5>제1조(목적)</h5>
                <p>
                  이 약관은 택배사업자 주식회사 홀리몰리네트웍스와 고객 간의
                  공정한 택배거래를 위하여 그 계약 조건을 정함을 목적으로
                  합니다.
                </p>

                <h5>제2조 (용어의 정의)</h5>
                <ul class="list-unstyled">
                  <li>
                    ① ‘택배’라 함은 소형.소량의 운송물을 고객의 주택, 사무실
                    또는 기타의 장소에서 수탁하여 수하인의 주택, 사무실 또는
                    기타의 장소까지 운송하여 인도하는 것을 말합니다.
                  </li>
                  <li>
                    ② ‘택배사업자’(이하 ‘사업자’라 합니다)라 함은 택배를
                    영업으로 하는 자를 말합니다.
                  </li>
                  <li>
                    ③ ‘고객’이라 함은 사업자에게 택배를 위탁하는 자로서 운송장에
                    송하인으로 기재되는 자를 말합니다.
                  </li>
                  <li>
                    ④ ‘수하인’이라 함은 고객이 운송장에 운송물의 수령자로
                    지정하여 기재하는 자를 말합니다.
                  </li>
                  <li>
                    ⑤ ‘운송장’이라 함은 사업자와 고객 간의 택배계약의 성립과
                    내용을 증명하기 위하여 사업자의 청구에 의하여 고객이 발행한
                    문서를 말합니다.
                  </li>
                  <li>
                    ⑥ ‘수탁’이라 함은 사업자가 택배를 위하여 고객으로부터
                    운송물을 수령하는 것을 말합니다.
                  </li>
                  <li>
                    ⑦ ‘인도’라 함은 사업자가 수하인에게 운송장에 기재된 운송물을
                    넘겨주는 것을 말합니다.
                  </li>
                  <li>
                    ⑧ ‘손해배상한도액’이라 함은 운송물의 멸실, 훼손 또는
                    연착시에 사업자가 손해를 배상할 수 있는 최고한도액을
                    말합니다.
                  </li>
                  <li>
                    다만, ‘손해배상한도액’은 고객이 운송장에 운송물의 가액을
                    기재하지 아니한 경우에 한하여 적용되며, 사업자는
                    손해배상한도액을 미리 이 약관의 별표로 제시하고 운송장에
                    기재합니다.
                  </li>
                </ul>

                <h5>제3조 (약관의 명시 및 설명)</h5>
                <ul class="list-unstyled">
                  <li>
                    ① 사업자는 이 약관을 사업장에 게시하며, 택배계약(이하
                    ‘계약’이라 합니다)을 체결하는 때에 고객의 요구가 있으면 이를
                    교부합니다.
                  </li>
                  <li>
                    ② 사업자는 계약을 체결하는 때에 고객에게 다음 각 호의 사항을
                    설명합니다.
                  </li>
                  <li>
                    1. 고객이 운송장에 운송물의 가액을 기재하면 사업자의
                    손해배상시 그 가액이 손해배상액의 산정기준이 된다는 사항
                  </li>
                  <li>
                    2. 고객이 운송장에 운송물의 가액을 기재하지 아니하면
                    사업자의 손해배상시 제20조 제3항의 손해배상한도액 내에서만
                    손해배상을 한다는 사항
                  </li>
                  <li>
                    3. 운송물의 가액에 따라 할증요금이 있는 경우 운송요금에 따라
                    손해배상한도액에 차이가 있다는 사항
                  </li>
                  <li>
                    ③ 사업자가 제1항 및 제2항의 규정에 위반하여 계약을 체결한
                    때에는 당해 약관규정을 계약의 내용으로 주장할 수 없습니다.
                  </li>
                </ul>

                <h5>제4조 (적용법규등)</h5>
                <p>
                  이 약관에 규정되지 않은 사항에 대하여는 화물자동차운수사업법,
                  상법 등의 법규와 공정한 일반관습에 따릅니다.
                </p>
              </div>
            </div>

            <div
              class="pt-5 d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.3; border-radius: 50%"
                type="checkbox"
                id="check_evt3"
                value="Y"
                class="mt-5"
                name="agree"
                required
              /><label for="check_evt3">
                <span class="ps-2">[필수] 이용약관동의</span></label
              >
            </div>

            <div class="d-flex justify-content-center mt-3">
              <div
                style="
                  overflow: scroll;
                  width: 80%;
                  height: 250px;
                  padding: 10px;
                  border: 0.1px solid rgb(221, 221, 221);
                "
              >
                <h5><strong>제1장 총칙</strong></h5>

                <h5>제1조(약관의 적용)</h5>

                <p>총 칙</p>

                <p>
                  이 약관은 주식회사 비지에프네트웍스(이하 “(주)BGF네트웍스”)가
                  운영하는 인터넷 홈페이지 서비스에서 제공하는 인터넷 관련
                  서비스(이하 "서비스"라 한다)를 이용함에 있어 (주)BGF네트웍스와
                  이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                </p>

                <h5>제2조 (정의)</h5>
                <ul>
                  <li>
                    ① "이용자"란 (주)BGF네트웍스
                    사이트(http://www.cupost.co.kr)에 접속하여 이 약관에 따라
                    (주)BGF네트웍스가 제공하는 서비스를 받는 회원 및 비회원을
                    말합니다.
                  </li>

                  <li>
                    ② “회원”이라 함은 (주)BGF네트웍스에 개인정보를 제공하여
                    회원등록을 한 자로서, (주)BGF네트웍스의 정보를 지속적으로
                    제공받으며, (주)BGF네트웍스가 제공하는 서비스를 계속적으로
                    이용할 수 있는 자나 회사를 말합니다.
                  </li>

                  <li>
                    ③ “비회원”이라 함은 회원으로 가입하지 않고 (주)BGF네트웍스가
                    제공하는 서비스를 이용하는 자를 말합니다.
                  </li>

                  <li>
                    ④ “CU통합포인트 회원”이라 함은 2021년 1월 11일부터 시행되는
                    “CU통합포인트 서비스 제휴”에 따라 “(주)BGF네트웍스”와
                    “BGF리테일(CU멤버십 서비스 이용약관)”의 이용약관,
                    “㈜BGF네트웍스”의 개인정보처리지침, 개인정보 수집, 이용,
                    제3자 제공 등을 동의하는 방법으로, “CU통합포인트
                    서비스”서비스를 정상적으로 이용할 수 있는 권한을 부여 받은
                    자를 말합니다.
                  </li>

                  <li>
                    ⑤ “CU통합포인트 서비스 제휴”라 함은 “CU통합포인트 회원”이
                    “(주)BGF네트웍스”의 CUpost택배 서비스 이용 시, BGF리테일이
                    제공하는 방법을 통해 “CU멤버십 포인트”를 사용/적립 할 수
                    있는 서비스에 관한 제휴 협약을 의미합니다.
                  </li>

                  <li>
                    ⑥ “CU멤버십 포인트”라 함은 “BGF리테일”이 운영하는 멤버십
                    포인트로, 적립 및 결제 시 현금처럼 사용 가능한 포인트(담배,
                    유가증권, 서비스상품 등 일부 상품 제외)를 말하며, “CU멤버십
                    포인트”의 구체적인 이용 방법은 “BGF리테일”의 『CU멤버십
                    서비스 이용약관』을 따릅니다.
                  </li>
                </ul>

                <h5>제3조 (약관의 효력과 개정)</h5>
                <ul>
                  <li>
                    ① 이 약관은 이용자에게 공시함으로써 효력을 발생합니다.
                  </li>

                  <li>
                    ② 이 약관의 내용을 이용자가 알 수 있도록
                    사이트(http://www.cupost.co.kr)에 게시합니다.
                  </li>

                  <li>
                    ③ (주)BGF네트웍스는 약관의 규제 등에 관한 법률,
                    전자거래기본법, 전자서명법, 정보 통신망이용촉진등에 관한
                    법률, 방문판매등에 관한 법률, 소비자보호법 등 관련법을
                    위배하지 않는 범위에서 수시로 이 약관을 개정할 수 있습니다.
                  </li>

                  <li>
                    ④ 본 서비스를 이용할 때에는 수시로 최신의 본 약관 및 적용된
                    개별 이용약관을 참조하시기 바랍니다. (주)BGF네트웍스가
                    약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행
                    약관과 함께 (주)BGF네트웍스의 초기화면에 그 적용일자 7일
                    이전부터 적용일자 전일까지 공지합니다.
                  </li>

                  <li>
                    ⑤ 변경된 약관의 효력 발생일까지 약관 변경에 대한 거부의사를
                    명시적으로 표시하지 않거나 약관 변경 이후에 서비스를 이용할
                    경우 변경된 약관에 동의한 것으로 봅니다. 이용자가 변경된
                    약관에 동의하지 않는 경우 고객이 서비스 이용이 제한되거나
                    정지될 수 있습니다.
                  </li>
                </ul>

                <h5><strong>제2장 회원가입계약</strong></h5>

                <h5>제4조 (회원가입)</h5>

                <ul>
                  <li>
                    ① 이용자는 (주)BGF네트웍스가
                    사이트(http://www.cupost.co.kr)에 정한 가입 양식에 따라
                    회원정보를 기입한 후 이 약관에 동의한다는 의사표시를
                    함으로서 회원가입을 신청합니다.
                  </li>

                  <li>
                    ② 2021년 1월 11일부터 시행되는 CU통합포인트 서비스 제휴에
                    따라 2021년 1월 11일 이후 가입 고객은 CU통합포인트
                    회원으로만 가입이 가능합니다. 다만, 매장내 Postbox를 통하여
                    회원가입을 하는 경우에는 기존과 같이 CUpost 회원으로
                    가입되며, CU멤버십 포인트 적립/사용을 위해서는 별도로
                    사이트(https://www.cupost.co.kr)에서 CU통합포인트 회원으로
                    가입해야 합니다.
                  </li>

                  <li>
                    ③ 2021년 1월 11일 이전 가입한 회원의 경우 CU통합포인트
                    회원이 아닌 일반 회원으로서 CUpost 서비스 이용이 가능합니다.
                  </li>

                  <li>
                    ④ (주)BGF네트웍스는 회원으로 가입할 것을 신청한 이용자 중
                    다음 각호에 해당하지 않는 한 회원으로 등록합니다.
                  </li>

                  <li>1. 다른 사람의 명의를 사용하여 신청하였을 때</li>

                  <li>2. 등록 내용에 허위, 기재누락, 오기가 있는 때</li>

                  <li>
                    3. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로
                    신청하였을 때
                  </li>

                  <li>4. 타인의 서비스 이용을 방해 하거나, 정보를 도용한 때</li>

                  <li>
                    5. 기타 회원으로 등록하는 것이 (주)BGF네트웍스의 서비스에
                    현저히 지장이 있다고 판단되는 경우
                  </li>
                </ul>
              </div>
            </div>

            <div
              class="pt-5 d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.3; border-radius: 50%"
                type="checkbox"
                id="check_evt4"
                value="Y"
                name="agree"
                class="mt-5"
                required
              /><label for="check_evt4">
                <span class="ps-2">[필수] 개인정보처리방침</span></label
              >
            </div>
            <div class="d-flex justify-content-center mt-3">
              <div
                style="
                  overflow: scroll;
                  width: 80%;
                  height: 250px;
                  padding: 10px;
                  border: 0.1px solid rgb(221, 221, 221);
                "
              >
                <p>
                  주식회사 비지에프네트웍스(이하 “BGF네트웍스”라 합니다)는
                  이용자님들의 개인정보를 중요하게 생각하며 아래와 같은
                  개인정보처리방침을 가지고 있습니다.
                </p>
                <p>
                  이 개인정보처리방침은 개인정보와 관련한 법령 또는 지침의
                  변경이 있는 경우 갱신되고, (BGF네트웍스) 정책의 변화에 따라
                  달라질 수 있으니 이용자께서는 (BGF네트웍스) 사이트를 방문 시
                  수시로 확인하여 주시기 바랍니다.
                </p>
                <p>
                  가. (BGF네트웍스)가 개인정보를 수집하는 목적은 이용자의 신분과
                  서비스 이용의사를 확인하여 최적화되고 맞춤화된 서비스를
                  제공하기 위함입니다. (BGF네트웍스)는 서비스 제공을 원활하게
                  하기 위해 필요한 최소한의 정보만을 수집하고 있습니다.
                </p>
                <p>
                  나. (BGF네트웍스)는 개인정보를 수집, 이용목적 이외에 다른
                  용도로 이를 이용하거나 이용자의 동의 없이 제3자에게 이를
                  제공하지 않습니다. 다. (BGF네트웍스)는 다음과 같은 서비스
                  제공을 위해 개인정보를 수집하여 이용할 수 있습니다. 1)
                  수집항목 가) 개인회원 ① 사이트(www.cupost.co.kr)에 대한
                  회원가입 - 인터넷 및 모바일 회원가입시 필수항목 : 이름, 성별,
                  생년월일, 전화번호, 로그인ID, 비밀번호, 주소, 이메일 -
                  POSTBOX를 이용한 회원가입시 필수항목 : 이름, 성별, 생년월일,
                  전화번호, 로그인ID, 비밀번호, 이메일 ②
                  사이트(www.mforyou.co.kr)에 대한 회원가입 -필수항목 : 이름,
                  아이디, 비밀번호, 주소, 메일, 휴대폰번호 - 선택항목: FAX번호,
                  전화번호 ③ 택배서비스(국내택배, 국제특송, 쇼핑몰거래,
                  홈택배,CU끼리택배) - 송수화인 이름, 전화번호, 주소,
                  운송장번호, 예약등록 번호, 예약등록 비밀번호, 물품명, 물품가 -
                  민원응대(CS) 시 : 예금주명, 계좌번호 ④ Pickup 서비스 - 수화인
                  이름, 전화번호, 구입 쇼핑몰명, 물품명, 물품가, 승인번호,
                  운송장번호 ⑤ 퀵서비스 - 송수화인 이름, 전화번호, 주소 ⑥ 이벤트
                  - 이벤트 참여자 이름, 전화번호, 카카오ID (이벤트 종류에 따라
                  카카오 ID는 수집하지 않을 수 있음) 나) 법인회원 ①
                  사이트(www.mforyou.co.kr)에 대한 회원가입 - 필수항목 :
                  대표자성명, 아이디, 대표번호, 휴대전화번호, 이메일, 상호,
                  사업자등록번호, 계약담당 및 기술담당 연락처 및 이메일 접속IP,
                  접속로그 - 선택항목 : 주소, 업태, 종목 ② 엠포유 메세징
                  서비스에 대한 유료 서비스 결제시 - 카드사명, 카드번호,
                  유효기간, 통신사(번호포함), 결제승인번호, 은행명, 계좌번호 ③
                  모바일 상품권, 현금영수증, DS광고 서비스 계약 시 - 필수항목 :
                  대표자성명, 아이디, 대표번호, 휴대전화번호, 이메일, 상호,
                  사업자등록번호, 계약담당 및 기술담당 연락처 및 이메일 접속IP,
                  접속로그 - 선택항목 : 주소, 업태, 종목 2) 수집방법 ① 회원가입
                  - 인터넷 회원가입, POSTBOX 장비 회원가입, 모바일 회원가입 ②
                  택배서비스(국내택배, 국제특송, 쇼핑몰거래, 홈택배,CU끼리택배)
                  - 인터넷 택배 예약, 택배 접수, 민원응대(CS) 시 ③ Pickup 서비스
                  - Pickup 상품 구매 쇼핑몰 ④ 퀵서비스 - 인터넷, 유선 퀵서비스
                  예약 및 접수 ⑤ 이벤트 - 당사 시행/제공 이벤트 참여시 ⑥ 법인
                  고객에 대한 모바일 상품권, 현금영수증, DS광고 서비스 계약시 -
                  정보등록신청서 라. (BGF네트웍스)는 이용자의 개인정보를 수집할
                  경우 반드시 이용자의 동의를 얻어 수집하며, 이용자의 기본적
                  인권을 침해할 우려가 있는 인종, 출신지, 본적지, 사상, 정치적
                  성향, 범죄기록, 건강상태 등의 정보는 이용자의 동의 또는 법령의
                  규정에 의한 경우 이외에는 수집하지 않습니다. 마.
                  (BGF네트웍스)는 다음과 같은 방법으로 개인정보를 수집할 수
                  있습니다. - 홈페이지, POSTBOX 장비, 전화, 문의하기, 이벤트
                  응모(카카오 채널 등), 법인 고객의 정보등록신청 2. 개인정보
                  처리 목적 가. 신청인의 서비스 이용을 위한 개인정보 수집 · 이용
                  - 성명/아이디/비밀번호/성별/생년월일 : 회원제 서비스 이용에
                  따른 본인 식별 - 전화번호 : 고유식별의 대체 수단으로서 가입자
                  본인 여부 확인 - 성명/이메일/전화번호 : 고지사항 전달,
                  불만처리 등 의사소통의 경로로 확보 - 주소 : 택배예약 등 배송용
                  정보로 활용 - 물품정보 : 불만처리등 의사 소통의 경로로 확보
                  나. 택배 서비스(국내택배, 국제특송, 쇼핑몰거래,
                  홈택배,CU끼리택배)
                </p>
              </div>
            </div>

            <div
              class="pt-5 d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.3; border-radius: 50%"
                type="checkbox"
                id="check_evt5"
                value="Y"
                name="agree"
                class="mt-5"
                required
              /><label for="check_evt5">
                <span class="ps-2">[필수] 개인정보 취급위탁</span></label
              >
            </div>
            <div class="d-flex justify-content-center mt-3">
              <div
                style="
                  overflow: scroll;
                  width: 80%;
                  height: 250px;
                  padding: 10px;
                  border: 0.1px solid rgb(221, 221, 221);
                "
              >
                <p>
                  원활한 서비스 제공을 위하여 정보통신망 이용촉진 및 정보보호
                  등에 관한 법률 2항을 준수하며 아래와 같이 개인정보를
                  취급위탁하고 있습니다.
                </p>
                <ul class="listHyp">
                  <li>
                    - 물품배송업무 : CJ대한통운(주), 국제특송(EMS) 우정청, CU,
                    파슬미디어,&nbsp;(주)BGF로지스, 하이로지스(주),
                    동부로지스(주), (주)화인로지텍
                  </li>
                  <li>
                    - 구매 및 결제업무 : 비씨카드, 국민카드, 신한카드, 외환카드,
                    삼성카드, 롯데카드, 현대카드, 나이스정보통신(주),
                    한국정보통신(주), NHN한국사이버결제
                  </li>
                  <li>
                    - 이벤트 및 경품 발송 대행 업무 : 퍼즐커뮤니케이션즈,
                    휴머스온
                  </li>
                </ul>
              </div>
            </div>

            <div
              class="pt-5 d-flex align-items-center justify-content-center"
              style="text-align: center"
            >
              <input
                class="form-check-input"
                style="zoom: 1.3; border-radius: 50%"
                type="checkbox"
                id="check_evt6"
                value="Y"
                name="agree"
                class="mt-5"
                required
              /><label for="check_evt6">
                <span class="ps-2"
                  >[필수] 만 14세 이상 (만 14세미만 아동의 경우 서비스 제공
                  불가)</span
                ></label
              >
            </div>
            <div style="text-align: center; margin-bottom: 100px" class="mt-4">
              <button
                type="submit"
                class="text-light btn"
                style="
                  background-color: rgb(54, 213, 66);
                  width: 13rem;
                  height: 3rem;
                "
              >
                다음단계
              </button>
            </div>
          </div>
        </div>
      </form>

      <form action="" method="get">
        <div
          class="container"
          id="text_for_reserv_check_and_cancel"
          style="display: none"
        >
          <div class="border d-flex" style="height: 10rem">
            <div
              class="align-self-center border-end flex-fill"
              style="text-align: center"
            >
              택배예약 시 등록한
              <span style="color: rgb(55, 210, 67)">보내는분 연락처</span>와
              <div>
                <span style="color: rgb(55, 210, 67)">비밀번호</span>를 입력해
                주세요.
              </div>
              예약일 기준 90일 이내 정보에 한하여 조회됩니다.
            </div>
            <div class="align-self-center flex-fill" style="text-align: center">
              휴대폰번호
              <input
                type="text"
                class="ms-4"
                style="border: 1px solid rgb(204, 204, 204); height: 35px"
              />
              <div class="mt-2">
                비밀번호 &nbsp;&nbsp;
                <input
                  type="password"
                  class="ms-4"
                  style="border: 1px solid rgb(204, 204, 204); height: 35px"
                />
              </div>
            </div>
          </div>
          <div class="mt-4" style="text-align: center">
            <div class="row d-flex justify-content-center">
              <div class="col text-end">
                <button
                  type="submit"
                  class="text-light btn"
                  style="
                    background-color: rgb(54, 213, 66);
                    width: 13rem;
                    height: 3rem;
                  "
                >
                  예약내역 조회
                </button>
              </div>
              <div class="col text-start">
                <button
                  type="submit"
                  class="text-light btn"
                  style="
                    background-color: rgb(54, 213, 66);
                    width: 13rem;
                    height: 3rem;
                  "
                >
                  이용문의
                </button>
              </div>
            </div>
          </div>
        </div>
      </form>
    </main>
    <jsp:include page="../footer.jsp" />
    <script src="/resources/js/termsForHomes.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
