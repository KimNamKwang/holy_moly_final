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
    <style>
      #termsUl > li {
        list-style-type: none;
      }

      li > a {
        text-decoration-line: none;
      }
    </style>
  </head>

  <body>
    <jsp:include page="../navbar.jsp" />
    <main>
      <div class="container">
        <div class="mb-5">
          <div
            class="h2 fw-bold text-center mt-5 mb-5"
            style="font-family: 'Noto Sans KR', sans-serif"
          >
            약관
          </div>
          <div class="d-flex justify-content-center">
            <ul
              id="termsUl"
              class="d-flex justify-content-evenly align-items-center w-50"
              style="font-size: small"
            >
              <li>
                <a
                  class="p-2 text-secondary"
                  style="border-bottom: 1px solid rgb(55, 210, 67)"
                  href="/terms/terms"
                  >이용약관</a
                >
              </li>
              <li>
                <a
                  class="p-2 text-secondary"
                  style="border-bottom: 1px solid rgb(55, 210, 67)"
                  href="/terms/termsPS"
                  >택배 이용 약관</a
                >
              </li>
              <li>
                <a
                  class="p-2 text-secondary"
                  style="border-bottom: 1px solid rgb(55, 210, 67)"
                  href="/terms/termsPrivacy"
                  >개인정보 처리방침</a
                >
              </li>
            </ul>
          </div>
        </div>
        <!-- 약관 내용 담는 곳 -->
        <div class="d-flex justify-content-center">
          <div class="overflow-auto w-75" style="font-size: small">
            <p
              class="fs-4 fw-bold mb-4"
              style="font-family: 'Noto Sans KR', sans-serif"
            >
              개인정보 처리방침
            </p>
            <p style="font-size: small">
              주식회사 HOLMOLTEK은 이용자님들의 개인정보를 중요하게 생각하며
              아래와 같은 개인정보처리방침을 가지고 있습니다. 이
              개인정보처리방침은 개인정보와 관련한 법령 또는 지침의 변경이 있는
              경우 갱신되고, (HOLMOLTEK) 정책의 변화에 따라 달라질 수 있으니
              이용자께서는 (HOLMOLTEK) 사이트를 방문 시 수시로 확인하여 주시기
              바랍니다.
            </p>

            <p style="font-weight: bold">
              1. 개인정보의 수집·이용 목적, 수집 항목 및 방법
            </p>
            <div>
              <ol style="list-style-type: upper-alpha">
                <li>
                  (HOLMOLTEK)가 개인정보를 수집하는 목적은 이용자의 신분과
                  서비스 이용의사를 확인하여 최적화되고 맞춤화된 서비스를
                  제공하기 위함입니다.
                </li>
                <li>
                  (HOLMOLTEK)는 개인정보를 수집, 이용목적 이외에 다른 용도로
                  이를 이용하거나 이용자의 동의 없이 제3자에게 이를 제공하지
                  않습니다.
                </li>
                <li>
                  (HOLMOLTEK)는 아래와 같은 목적을 위하여 개인정보를 수집 및
                  이용하고 있습니다.
                </li>
                <ol style="list-style: lower-alpha">
                  <li>개인정보의 수집 이용 목적, 수집 항목</li>
                </ol>
              </ol>
            </div>
            <div>
              <p style="font-weight: bold" class="text-success">
                [개인정보의 수집·이용 목적, 수집 항목(필수)]
              </p>
              <table class="table table-bordered">
                <thead class="align-middle">
                  <th class="text-nowrap">서비스명</th>
                  <th>수집·이용 목적</th>
                  <th>수집 항목</th>
                  <th>보유기간</th>
                </thead>
                <tbody class="align-middle">
                  <tr>
                    <td rowspan="5">PEST</td>
                    <td>회원가입</td>
                    <td>
                      (1)인터넷 및 모바일 회원가입시 이름, 성별, 생년월일,
                      전화번호, 로그인ID, 비밀번호, 주소, 이메일,
                      본인인증연계정보(CI) <br />(2)PEST를 이용 회원가입시 이름,
                      성별, 생년월일, 전화번호, 로그인ID, 비밀번호, 이메일
                    </td>
                    <td>회원 탈퇴 시 즉시 삭제</td>
                  </tr>
                  <tr>
                    <td>택배서비스 (국내택배, 국제특송, 쇼핑몰거래, 홈택배)</td>
                    <td>
                      송수화인 이름, 전화번호, 주소, 운송장번호, 예약등록번호,
                      예약등록비밀번호, 물품명, 물품가, 예금주명, 계좌번호
                    </td>
                    <td rowspan="2">5년</td>
                  </tr>
                  <tr>
                    <td>픽업 서비스</td>
                    <td>
                      수화인 이름, 전화번호, 구입 쇼핑몰명, 물품명, 물품가,
                      승인번호, 운송장번호
                    </td>
                  </tr>
                  <tr>
                    <td>퀵서비스</td>
                    <td>송수화인 이름, 전화번호, 주소</td>
                    <td>3개월</td>
                  </tr>
                  <tr>
                    <td>이벤트</td>
                    <td>이벤트 참여자 이름, 전화번호, 카카오ID</td>
                    <td>이벤트 종료 후 180일 후 삭제</td>
                  </tr>
                  <tr>
                    <td>기타</td>
                    <td>모바일 상품권, 현금영수증, DS광고 서비스 계약 시</td>
                    <td>
                      대표자성명, 아이디, 대표번호, 휴대전화번호, 이메일, 상호,
                      사업자등록번호, 계약담당 및 기술담당 연락처 및 이메일
                      접속IP, 접속로그
                    </td>
                    <td>계약 종료 후 즉시 삭제</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div>
              <p style="font-weight: bold" class="text-success">
                [개인정보의 수집·이용 목적, 수집 항목(선택)]
              </p>
              <table class="table table-bordered">
                <thead class="align-middle">
                  <th class="text-nowrap">서비스명</th>
                  <th>수집·이용 목적</th>
                  <th>수집 항목</th>
                  <th>보유 기간</th>
                </thead>
                <tbody class="align-middle">
                  <tr>
                    <td rowspan="2">PEST</td>
                    <td>회원 가입</td>
                    <td>사업자등록번호</td>
                    <td rowspan="2">회원 탈퇴 시 즉시 삭제</td>
                  </tr>
                  <tr>
                    <td>
                      이벤트 관련 <br />1. 광고성 정보 전달 간 활용<br />
                      2. 경품 및 쇼핑몰 물품 배송 정보 확보 간 활용<br />
                      3. 맞춤형 서비스 제공 및 광고 간 활용<br />
                      4. 이용 통계 자료 제작 간 활용
                    </td>
                    <td>
                      이벤트 참여자 이름, 전화번호,
                      카카오ID,본인인증연계정보(CI), 회원등급, PEST 상품 및
                      서비스 구매 내역 (운송장정보, 구매 상품 및 서비스정보,
                      접수일자, 점포정보, 운임, 할인쿠폰 금액 등)
                    </td>
                  </tr>
                  <tr>
                    <td>기타</td>
                    <td>모바일 상품권, 현금영수증, DS광고 서비스 계약 시</td>
                    <td>주소, 업태, 종목</td>
                    <td>계약 종료 후 즉시 삭제</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div>
              <ol style="list-style-type: upper-alpha" start="4">
                <ol style="list-style: lower-alpha" start="2">
                  <li>
                    수집방법
                    <ol>
                      <li>
                        회원가입<br />
                        - 인터넷 회원가입, POSTBOX 장비 회원가입, 모바일
                        회원가입
                      </li>
                      <li>
                        택배서비스(국내택배, 국제특송, 쇼핑몰거래, 홈택배)<br />
                        - 인터넷 택배 예약, 택배 접수, 민원응대(CS) 시
                      </li>
                      <li>
                        Pickup 서비스<br />
                        - Pickup 상품 구매 쇼핑몰
                      </li>
                      <li>
                        이벤트<br />
                        - 당사 시행/제공 이벤트 참여시
                      </li>
                      <li>
                        법인 고객에 대한 모바일 상품권, 현금영수증, DS광고
                        서비스 계약시<br />
                        - 정보등록신청서
                      </li>
                    </ol>
                  </li>
                </ol>
                <li>
                  (HOLMOLTEK)는 이용자의 개인정보를 수집할 경우 반드시 이용자의
                  동의를 얻어 수집하며, 이용자의 기본적 인권을 침해할 우려가
                  있는 인종, 출신지, 본적지, 사상, 정치적 성향, 범죄기록,
                  건강상태 등의 정보는 이용자의 동의 또는 법령의 규정에 의한
                  경우 이외에는 수집하지 않습니다.
                </li>
                <li>
                  (HOLMOLTEK)는 다음과 같은 방법으로 개인정보를 수집할 수
                  있습니다.<br />
                  - 홈페이지, POSTBOX 장비, 전화, 문의하기, 이벤트 응모(카카오
                  채널 등), 법인 고객의 정보등록신청
                </li>
              </ol>
            </div>

            <p style="font-weight: bold">2. 개인 정보 제3자 제공</p>
            <div>
              <ol style="list-style-type: upper-alpha">
                <li>
                  (HOLMOLTEK)는 정보주체의 별도 동의, 법률의 특별한 규정 등
                  개인정보보호법 제17조에 해당하는 경우 외에는 개인정보를
                  제3자에게 제공하지 않습니다. 다만, 아래의 경우에는 예외로
                  합니다.
                  <ol>
                    <li>이용자가 사전에 동의한 경우</li>
                    <li>
                      법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진
                      절차와 방법에 따라 수사기관의요구가 있는 경우
                    </li>
                  </ol>
                </li>
                <li>
                  HOLMOLTEK는 보다 나은 서비스 제공을 위하여 아래와 같이
                  개인정보를 제3자에게 제공하고 있습니다.
                </li>
              </ol>
              <p style="font-weight: bold" class="text-success">
                [개인정보의 제3자 제공 동의(필수)]
              </p>
              <table class="table table-bordered">
                <thead class="align-middle">
                  <th class="text-nowrap">서비스명</th>
                  <th>제공받는 자</th>
                  <th>제공받는 자의 이용목적</th>
                  <th>개인정보 제공항목</th>
                  <th>제공받는 자의 보유 및 이용기간</th>
                </thead>
                <tbody class="align-middle">
                  <tr>
                    <td>PEST</td>
                    <td>HOLMOLTEK</td>
                    <td>회원 가입 및 멤버십 포인트 적립 및 이용</td>
                    <td>
                      본인인증연계정보(CI), 이름, 성별, 생년월일, 전화번호,
                      이메일
                    </td>
                    <td>멤버십 이용약관 철회 또는 멤버십 탈퇴시로부터 1년</td>
                  </tr>
                </tbody>
              </table>
              <p style="font-weight: bold" class="text-success">
                [개인정보의 제3자 제공 동의(선택)]
              </p>
              <table class="table table-bordered">
                <thead class="align-middle">
                  <th class="text-nowrap">서비스명</th>
                  <th>제공받는 자</th>
                  <th>제공받는 자의 이용목적</th>
                  <th>개인정보 제공항목</th>
                  <th>제공받는 자의 보유 및 이용기간</th>
                </thead>
                <tbody class="align-middle">
                  <tr>
                    <td>PEST</td>
                    <td>HOLMOLTEK</td>
                    <td>
                      1. 멤버십 제휴사가 제공하는 상품 및 서비스 안내소식지
                      제공<br />
                      2. 이벤트, 제휴행사 및 서비스 홍보를 위한 활용<br />
                      3. 마케팅을 위한 고객정보 분석 및 서비스 개발
                    </td>
                    <td>
                      본인인증연계정보(CI), 회원등급, PEST 상품 및 서비스
                      구매내역(운송장정보, 구매 상품 및 서비스정보, 접수일자,
                      점포정보, 운임, 할인쿠폰금액 등)
                    </td>
                    <td>제공일로부터 1년, 동의 철회 요청시로부터 7일</td>
                  </tr>
                </tbody>
              </table>
            </div>

            <p style="font-weight: bold">3. 개인정보처리 위탁</p>
            <div>
              <ol style="list-style-type: upper-alpha">
                <li>
                  (HOLMOLTEK)는 원활한 개인정보 업무처리를 위하여 다음과 같이
                  개인정보 처리업무를 위탁하고 있습니다.
                </li>
              </ol>
              <p style="font-weight: bold" class="text-success">
                [개인정보 처리 위탁]
              </p>
              <table class="table table-bordered">
                <thead class="align-middle">
                  <th class="text-nowrap">서비스명</th>
                  <th>수탁 업체</th>
                  <th>위탁업무 내용</th>
                </thead>
                <tbody class="align-middle">
                  <tr>
                    <td rowspan="5">PEST</td>
                    <td>CJ대한통운㈜</td>
                    <td>
                      택배(국내택배, 국제특송, 쇼핑몰거래, 홈택배) 서비스 관련
                      물품배송 또는 청구서 등 발송, 요금추심, 불만처리 등
                      민원처리
                    </td>
                  </tr>
                  <tr>
                    <td>㈜HOLMOLTEK</td>
                    <td>
                      픽업 서비스 및 민원응대(CS) 관련 구매 및 요금 결제,
                      불만처리 등 민원처리
                    </td>
                  </tr>
                  <tr>
                    <td>나이스정보통신㈜</td>
                    <td>구매 및 요금 결제</td>
                  </tr>
                  <tr>
                    <td>한국정보통신㈜</td>
                    <td>구매 및 요금 결제</td>
                  </tr>
                  <tr>
                    <td>㈜KG모빌리언스</td>
                    <td>구매 및 요금 결제</td>
                  </tr>
                </tbody>
              </table>
              <ol style="list-style-type: upper-alpha" start="2">
                <li>
                  (HOLMOLTEK)는 위탁계약 체결시 개인정보 보호법 제25조에 따라
                  위탁업무 수행목적 외 개인정보 처리금지, 기술적, 관리적
                  보호조치, 재위탁 제한, 수탁자에 대한 관리, 감독, 손해배상 등
                  책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가
                  개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                </li>
                <li>
                  위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본
                  개인정보 처리방침을 통하여 공개하도록 하겠습니다.
                </li>
              </ol>
            </div>

            <p style="font-weight: bold">
              4. 이용자 개인정보의 보유 : 이용기간 및 파기
            </p>
            <p>
              (HOLMOLTEK)는 개인정보 수집 및 이용 목적이 달성된 후에는 해당
              정보를 지체 없이 파기하는 것을 원칙으로 합니다. 단, 다음의 정보에
              대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
            </p>
            <ol style="list-style-type: upper-alpha">
              <li>
                관련법령 및 (HOLMOLTEK) 방침에 의한 정보보유 사유<br />
                - 관계법령의 규정에 의하여 보존할 필요가 있는 경우 법령에서
                규정한 일정한 기간 동안 이용자 개인정보를 보관합니다. 이 경우
                (HOLMOLTEK)는 보관하는 정보를 그 보관의 목적으로만 이용하며
                보존기간은 아래와 같습니다.
              </li>
              <ol>
                <li>
                  배송정보 관련<br />
                  - 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 제6조
                  및 시행령 제6조<br />
                  - 보존 기간 : 5년
                </li>
                <li>
                  대금결제 및 재화 등의 공급에 관한 기록<br />
                  - 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 제6조
                  및 시행령 제6조<br />
                  - 보존 기간 : 5년
                </li>
                <li>
                  소비자의 불만 또는 분쟁처리에 관한 기록<br />
                  - 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 제6조
                  및 시행령 제6조<br />
                  - 보존 기간 : 3년
                </li>
                <li>
                  택배 예약 관련<br />
                  - 보존 기간 : 회원택배예약 6개월, 비회원예약 3개월
                </li>
                <li>
                  고객 미수취 금액에 대한 환불 기록<br />
                  - 보존 이유 : 법인세법<br />
                  - 보존 기간 : 5년
                </li>
                <li>
                  웹사이트 방문기록<br />
                  - 보존 이유 : 통신비밀보호법<br />
                  - 보존 기간 : 3개월
                </li>
                <li>
                  전자금융 거래에 관한 기록<br />
                  - 보존 이유 : 전자금융거래법<br />
                  - 보존 기간 : 5년
                </li>
              </ol>
              <li>
                수집된 개인정보의 보유, 이용기간은 회원의 경우
                서비스이용계약체결(회원가입)시부터 서비스이용계약
                해지시(탈퇴신청 포함)까지, 비회원의 경우 상기 가(관련 법령 및
                HOLMOLTEK 방침에 의한 정보 보유 사유)에 명시된 기간까지 입니다.
                또한 동의 철회 시 (HOLMOLTEK)는 이용자의 개인정보를 상기 명시한
                정보보유 사유에 따라 일정 기간 저장하는 자료를 제외하고는 지체
                없이 파기하며 개인정보처리가 제3자에게 위탁된 경우에는
                수탁자에게도 파기하도록 지시합니다.
              </li>
              <li>
                파기방법<br />
                - 이용자의 개인정보는 보유기간의 경과, 수집 및 이용목적이 달성된
                후에는 지체 없이 파기됩니다. 종이에 출력된 개인정보는 분쇄기로
                분쇄하거나 소각 등을 통하여 파기하고, 전자적 파일형태로 저장된
                개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여
                파기합니다.
              </li>
            </ol>

            <p style="font-weight: bold">6. 이용자의 의무</p>
            <p>
              이용자는 자신의 개인정보를 보호할 의무가 있으며, (HOLMOLTEK)의
              귀책사유가 없이 ID, 비밀번호, 접근매체 등의 양도, 대여, 분실이나
              로그인 상태에서 이석 등 이용자 본인의 부주의나 브라우져 취약점,
              관계법령에 의한 보안조치로 차단할 수 없는 방법이나 기술을 사용한
              해킹 등 (HOLMOLTEK)가 상당한 주의에도 불구하고 통제 할 수 없는
              인터넷 상의 문제 등으로 개인정보가 유출되어 발생한 문제에 대해
              (HOLMOLTEK)는 일체의 책임을 지지 않습니다.
            </p>
            <ol style="list-style-type: upper-alpha">
              <li>
                개인정보 처리 직원의 최소화 및 교육<br />
                개인정보를 처리하는 직원을 지정하고 담당자에 한정시켜 최소화
                하여 개인정보를 관리하는 대책을 시행하고 있습니다.
              </li>
              <li>
                정기적인 자체 감사 실시<br />
                개인정보 처리 관련 안정성 확보를 위해 정기적(반기 1회)으로 자체
                감사를 실시하고 있습니다.
              </li>
              <li>
                내부관리계획의 수립 및 시행<br />
                개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고
                있습니다.
              </li>
              <li>
                해킹 등에 대비한 기술적 대책 (HOLMOLTEK)는 해킹이나 컴퓨터
                바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여
                보안프로그램을 설치 하고 주기적인 갱신, 점검을 하며 외부로부터
                접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및
                차단하고 있습니다.
              </li>
              <li>
                개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,
                변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한
                조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단
                접근을 통제하고 있습니다.
              </li>
              <li>
                접속기록의 보관 및 위변조 방지 개인정보처리시스템에 접속한
                기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조
                및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.
              </li>
            </ol>

            <p style="font-weight: bold">
              7. 개인정보 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항
            </p>
            <p>
              회사는 개인정보 자동 수집 장치를 설치, 운영하고 있지 않습니다.
            </p>

            <p style="font-weight: bold">8. 개인정보 보호책임자</p>
            <ol style="list-style-type: upper-alpha">
              <li>
                (HOLMOLTEK)는 개인정보 처리에 관한 업무를 총괄해서 책임지고,
                개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을
                위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
              </li>
              <ol>
                <li>
                  개인정보 보호책임자<br />
                  성명 : 황환조
                </li>
                <li>
                  개인정보 보호 담당 부서<br />
                  - 부서명 : IT지원팀<br />
                  - 관리자 : 김남광 팀장(연락처 : 02-6711-0680, HOLY@bgf.co.kr,
                  FAX :02-6711-0699) <br />
                  - 담당자 : 김남일 책임(연락처 : 02-6711-0682, MOLY@bgf.co.kr,
                  FAX :02-6711-0699)
                </li>
              </ol>
              <li>
                정보주체께서는 (HOLMOLTEK)의 서비스(또는 사업)을 이용하시면서
                발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에
                관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수
                있습니다. (HOLMOLTEK)는 정보주체의 문의에 대해 지체 없이 답변 및
                처리해드릴 것입니다.
              </li>
            </ol>

            <p style="font-weight: bold">9. 권익침해 구제방법</p>
            <p>
              정보주체는 개인정보 침해로 인한 구제를 받기 위하여
              개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에
              분쟁해결이나 상담을 신청할 수 있습니다.
            </p>
            <ol style="list-style-type: upper-alpha">
              <li>
                개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)
              </li>
              <li>
                개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)
              </li>
              <li>
                대검찰청 : (국번없이) 1301, privacy@spo.go.kr (www.spo.go.kr)
              </li>
              <li>
                경찰청(사이버범죄 신고시스템) : (국번없이) 182
                (https://ecrm.cyber.go.kr/minwon/main)
              </li>
            </ol>

            <p style="font-weight: bold">10. 개인정보 처리방침 변경</p>
            <p>
              이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른
              변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일
              전부터 공지사항을 통하여 고지할 것입니다.
            </p>
          </div>
          <div>
            <br />
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
