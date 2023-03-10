![header](https://capsule-render.vercel.app/api?type=slice&color=gradient&height=150&section=footer&text=Final%20Project&fontSize=80)

# Post Web Page

**자바 기반 양성과정 교육 과정 파이널 프로젝트**

**의뢰팀의 의뢰서와 요구사항정의서를 기반하여 **

## 웹개발팀 소개

김남광|김석진|안지영|이재현|
---|---|---|---|
![image](https://user-images.githubusercontent.com/109323666/224196633-94224d01-214c-4c87-a813-fa0c84334b5d.png)|![image](https://user-images.githubusercontent.com/109323666/224196675-159375e6-2236-4525-a001-8ec009a636ff.png)|![image](https://user-images.githubusercontent.com/109323666/224196718-2b698f59-275a-476e-b8ae-747b5865e7db.png)|![image](https://user-images.githubusercontent.com/109323666/224196742-2d7e3d91-3c43-4b2b-83e2-b0823fe991fe.png)|
[@KimNamKwang](https://github.com/KimNamKwang)|[@tjrwls234](https://github.com/tjrwls234)|[@AnJiYeong](https://github.com/AnJiYeong)|[@dwogus6893](https://github.com/dwogus6893)|
KH정보교육원 수료생|KH정보교육원 수료생|KH정보교육원 수료생|KH정보교육원 수료생|

## 프로젝트 소개

POST는 집으로 찾아가는 택배 운송 기업입니다. 많은 사람들은 택배를 직접 우체국이나 편의점 등으로 가지고 가서 접수를 합니다. 택배를 접수하러 가기까지의 바쁜 현대 사회인들의 소중한 시간을 최소화 해 주고, 편리함까지 갖춘 택배 서비스가 바로 POST기업이고, 앞서 말한 내용이 본 기업의 궁극적인 목표입니다. 본 기업은 택배 기사가 직접 고객이 지정한 주소로 찾아가 물품을 픽업하여 수령지까지 배송하는 서비스를 제공합니다. 이 사이트에서는 기사 방문일을 지정한 배송 예약 접수 및 결제, 배송 조회 등을 할 수 있습니다.

**POST provides convenient courier service.**
You can send a package without going to the post office in person. Feel the convenience for yourself!

Our website supports the following component.

1. Accept reservations with a choice of dates and times of visit
2. Section of 1:1 Enquiry Free to Inquire
3. Tracking available up to time

---

## Stacks 🔧

### Environment

<img src="https://img.shields.io/badge/Visual%20Studio%20Code-007ACC?style=for-the-badge&logo=Visual%20Studio%20Code&logoColor=white"> <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white">

### WAS

<img src="https://img.shields.io/badge/Apache%20Tomcat-F8DC75?style=for-the-badge&logo=Apache%20Tomcat&logoColor=black">

### Development

<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black"> <img src="https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=Spring%20Boot&logoColor=white"> <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jQuery&logoColor=white"> <img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"> <img src="https://img.shields.io/badge/CSS-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"> <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=Bootstrap&logoColor=white">

---

## 페이지 영상

- [POST Web Page](https://www.youtube.com/watch?v=SDOiq77q_7Q)

---

## 화면 구성 🖥

| 메인 페이지                                                                                                      | 예약 페이지                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| ![image](https://user-images.githubusercontent.com/109323666/224203281-2acf75cd-d972-415d-97ac-4f85631e039d.png) | ![image](https://user-images.githubusercontent.com/109323666/224203983-d9db226b-4b01-4439-95e8-235c00bacdb8.png) |
| 배송조회 페이지                                                                                                  | 1:1 문의 페이지                                                                                                  |
| ![image](https://user-images.githubusercontent.com/109323666/224204377-d0136d8f-a261-4766-8c3f-02ba3225621c.png) | ![image](https://user-images.githubusercontent.com/109323666/224204676-4f7c984d-d7bb-434c-b1d0-5120fd9ba74d.png) |
| 관리자 - 사용자 관리 페이지                                                                                      | 관리자 - 1:1 문의 관리 페이지                                                                                    |
| ![image](https://user-images.githubusercontent.com/109323666/224205061-30e2b542-f652-4928-afa8-005ca89871ba.png) | ![image](https://user-images.githubusercontent.com/109323666/224205119-92416c7a-98f7-44a9-8555-02686e453e69.png) |

---

## 주요 기능 ⛓️

### 사용자 페이지

#### ⭐ 택배 접수 기능

- 발송인 정보 -> 수령입 정보 -> 입력 내역 확인 -> 결제 -> 결제 완료 순서
- 프리미엄은 익일~+2일 중으로 시간까지 선택 예약 가능
- 등급 별 할인금액 적용
- 결제 시 보유 포인트 사용 가능

#### ⭐ 배송조회 기능

- 운송장번호를 통해 조회
- 예약일자, 발송인 이름, 수령인 이름, 물품 종류, 배송 상태(날짜 및 시간) 확인 가능
- 예약 직후 바로 조회 가능

### 관리자 페이지

#### ⭐ 배송 관리

- 배송진행상태 변경

---

## ERD

![image](https://user-images.githubusercontent.com/109323666/224228867-a110bd5e-14cf-49db-858c-3a3d55c3b838.png)

---

## 구현 코드 일부

#### ajax와 연동되는 restFul 컨트롤러

```java
@RestController
@CrossOrigin
public class RestfulController {

    @Autowired
    CustomerService customerService;
    @Autowired
    CommonService commonService;

    @RequestMapping(value = "/forfaq/faq_type_uid/", method = RequestMethod.GET)
    public Map callFAQList(@RequestParam Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) customerService.getFAQLists(params);
        return resultMap;
    }

    @RequestMapping(value = "/forJoinStep2/id_check/", method = RequestMethod.GET)
    public Map idDuplicatedCheck(@RequestParam Map<String, Object> params) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap = (Map<String, Object>) commonService.idDuplicateCheck(params);
        return resultMap;
    }

}
```

#### 특정 url에 접근할때 권한 확인 후 접근여부 결정

```JAVA
@Configuration
public class SecurityConfiguration {
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.csrf().disable();
        httpSecurity.authorizeRequests()
                .antMatchers("/admin/*").access("hasRole('ROLE_ADMIN')")
                .anyRequest().permitAll();

        httpSecurity.formLogin().loginPage("/common/login") // 로그인
                .failureUrl("/common/login?fail=true")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/");

        return httpSecurity.build();
    }
}
```
