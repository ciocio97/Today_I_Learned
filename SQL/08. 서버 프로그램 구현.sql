<개발환경 구축>
--형상 통제를 설명하시오.
    --형상 항목의 버전 관리를 위해서 변경 여부와 변경 활동을 통제하는 활동
        
        --형상 관리(Configuration Management)란? --소프트웨어 개발 전체 과정에서 발생하는 모든 항목의 변경사항을 관리하기 위한 활동이다.
        
        --형상 관리 절차
            --형상 식별: 형상 관리 대상을 정의하고 식별하는 활동.
            --형상 통제: 형상 항목의 버전 관리를 위해 변경 여부와 변경 활동을 통제하는 활동.
            --형상 감사: 소프트웨어 베이스라인 무결성 평가.
            --형상 기록: 소프트웨어 형상 및 변경 관리에 대한 각종 수행결과를 기록.

        --형상 관리 도구 유형
            --공유 폴더 방식
                --RCS: 다수의 사람이 파일 수정을 동시에 할 수 없도록 파일 잠금 방식으로 형상을 관리하는 도구
            --클라이언트/서버 방식
                --CVS: 다수의 인원이 동시에 범용적인 운영체제로의 접근이 가능한 형상 관리 도구
                --SVN: 저장소에 소스를 저장해 소스 중복이나 여러 문제를 해결하기 위한 도구
                --Bitkeeper: 대규모 프로젝트에서 빠른 속도를 내도록 개발된 형상 관리 도구
            --분산 저장소 방식
                --Git: 분산형 버전 관리 시스템이며 대형 프로젝트에 효과적이고 유용한 도구
--Linux 위에서 구동하며 휴대 전화를 비롯한 휴대용 장치를 위한 운영체제와 미들웨어, 사용자 인터페이스
--그리고 표준 응용 프로그램(웹 브라우저, 이메일 클라이언트 등)을 포함하고 있는 자바 및 코틀린을 사용하여 개발하는 운영체제는 무엇인가?
    --안드로이드(Android)
        
        --개발 환경 구축이란? 응용 소프트웨어 개발을 위해 소프트웨어 및 하드웨어 장비를 구축하는 것.

        --하드웨어
            --클라이언트 하드웨어 : 사용자와의 인터페이스 역할 
                --클라이언트 프로그램
                --웹 브라우저
                --모바일 앱
                --모바일 웹
            --서버 하드웨어 : 클라이언트와 통신하여 서비스를 제공
                --웹 서버(Web Server): 클라이언트로부터 직접 요청을 받아 처리하는 서버. 저용량의 정적 파일을 제공
                --웹 애플리케이션 서버(WAS): 웹 서버로부터 요청을 받아 데이터 가공작업, 또는 웹 서버-데이터베이스 서버, 웹 서버-파일 서버에서 인터페이스 역할을 수행. 사용자에게 동적 서비스를 제공.
                --데이터베이스 서버(DB Server): DB와 이를 관리하는 DBMS를 운영하는 서버.
                --파일 서버(File Server): DB에 저장하기에는 비효율적이나 서비스 제공이 목적인 파일들을 저장하는 서버.

        --소프트웨어
            --시스템 소프트웨어
                --운영체제(OS): 서버의 하드웨어를 사용자 관점에서 편리하고 유용하게 사용하기 위한 소프트웨어.
                --미들웨어: 컴퓨터와 컴퓨터를 연결하고 이에 대한 관리를 도와주는 소프트웨어.
                --DBMS: 사용자와 DB 사이에서 사용자의 요구에 따라 정보를 생성, 관리해주는 소프트웨어.
            --개발 소프트웨어
                --01.요구사항 관리 도구: 요구사항 수집과 분석, 추적 등을 편리하게 도와주는 소프트웨어.
                --02.설계/모델링 도구: UML(통합 모델링 언어)지원, 개발의 전 과정에서 설계 및 모델링을 도와주는 소프트웨어.
                --03.구현 도구: 개발 언어를 통해 애플리케이션의 실제 구현을 지원하는 소프트웨어.
                --04.빌드 도구: 수현 도구를 통해 작성된 소스 빌드 및 배포, 라이브러리 관리를 지원하는 소프트웨어.
                --05.테스트 도구: 모듈들이 요구사항에 적합하게 구현되었는 지 테스트하는 소프트웨어.
                --06.형상 관리 도구: 산출물을 버전별로 관리하여 품질 향상을 지원하는 소프트웨어. 
<공통 모듈 구현>
--모듈(Module)이란? --모듈화를 통해 분리된 시스템의 각 기능들로, 하나의 완전한 기능을 수행할 수 있는 독립된 실체.

--모듈화(Modularity)란? --소프트웨어의 성능을 향상시키거나 시스템의 수정 및 재사용, 유지 관리 등이 용이하도록 시스템의 기능들을 모듈 단위로 분해하는 것.
                       --모듈 간 결합도의 최소화, 응집도의 최대화를 목표로 한다.

--공통 모듈(Common Module)이란? --전체 프로그램의 기능 중 특정 기능을 처리할 수 있는 실행 코드
                               --자체적으로 컴파일이 가능하고, 다른 프로그램에서 재사용이 가능하다.

--공통 모듈 구현 절차
    -- DTO/VO -> SQL -> DAO -> Service -> Controller -> 화면 구현 

--결합도(Coupling)란? --외부 모듈 간에 상호 의존하는 정도. 모듈 간의 관련성을 측정하는 척도이다.
    --> '자' '스'슬 '제'대로 '외'국어 '공'부 '내'일부터 시작해볼까 ?
    --자료 결합도(Data Coupling)    : 모듈 간의 인터페이스로 전달되는 파라미터를 통해서만 모듈 간의 상호 작용이 일어나는 경우의 결합도.                     (결합도 약함) good
    --스탬프 결합도(Stamp Coupling) : 모듈 간의 인터페이스로 배열, 객체, 구조 등이 전달되는 경우의 결합도.                                                     .
    --제어 결합도(Control Coupling) : 단순 처리 대상인 값만 전달되는 게 아니라, 어떻게 처리를 해야 한다는 제어 요소가 전달되는 경우의 결합도.        
    --외부 결합도(External Coupling): 모듈이 외부에서 도입된 데이터 포맷, 통신 프로토콜, 디바이스 인터페이스를 공유할 경우의 결합도.                             .
    --공통 결합도(Common Coupling)  : 파라미터가 아닌, 모듈 밖에 선언되어 있는 전역변수를 참조하고 갱신하는 식으로 상호작용하는 경우의 결합도.        
    --내용 결합도(Content Coupling) : 다른 모듈 내부에 있는 변수나 기능을 다른 모듈에서 사용하는 경우의 결합도.                                           (결합도 강함) bad

--응집도(Cohesion)란? --모듈의 독립성을 나타내는 정도. 모듈 내부 구성요소 간 연관 정도이다.
    --> '기'억속 '순'간의 '통'증은 '절'대적인 '시'간을 통해 '논'리적 '우'울감을 형성했다.
    --기능적 응집도(Functional Cohesion)    : 모듈 내부의 기능이 단일한 목적을 위해 수행되는 경우의 응집도.                                              (응집도 강함) good
    --순차적 응집도(Sequential Cohesion)    : 모듈 내에서 한 활동으로부터 나온 출력값을 다른 활동이 사용할 경우의 응집도.
    --통신적 응집도(Communication Cohesion) : 동일한 입력과 출력을 사용하여 다른 기능을 수행하는 활동들이 모여 있는 경우의 응집도.                               .
    --절차적 응집도(Procedural Cohesion)    : 모듈이 다수의 관련 기능을 가질 때, 모듈 안에서 구성 요소들이 그 기능을 순차적으로 수행할 경우의 응집도.             
    --시간적 응집도(Temporal Cohesion)      : 연관된 기능이 아니라 특정 시간에 처리되어야 하는 활동들을 한 모듈 안에서 처리할 경우의 응집도.                      .
    --논리적 응집도(Logical Cohesion)       : 유사한 성격을 갖거나 특정 형태로 분류되는 요소들이 한 모듈 안에서 처리되는 경우의 응집도.
    --우연적 응집도(Coincidential Cohesion) : 모듈 내부의 각 구성요소가 연관이 없을 경우의 응집도.                                                      (응집도 약함) bad

--팬인(Fan-In) / 팬 아웃(Fan-Out) ? --소프트웨어의 구성요소인 모듈을 계층적으로 분석하기위해서 활용하는 개념.
    --팬인(Fan-In)    : 모듈 자신을 기준으로 모듈에 들어오면 In
    --팬아웃(Fan-Out) : 모듈 자신을 기준으로 모듈에서 나가면 Out
<서버 프로그램 구현>
--서버 프로그램 구현 절차

    --Back End : DTO/VO -> SQL -> DAO -> Service -> Controller

        --DTO(Data Transfer Object)/VO(Value Object) 구현
            --DTO(데이터 전송 객체): 프로세스 사이에서 data를 전송하는 객체. 데이터 저장/회수 외의 다른 기능 없음.
            --VO: DTO와 달리 고정 클래스를 가짐.
            --화면에서 전달받은 회원정보로 DB에 저장하는 '객체'를 구현한다.
                public class JoinVO{
                    String id; --회원 아이디
                    String pw; --회원 비밀번호
                    String nm; --회원 이름
                    
                    public void setId(String id) { --회원 아이디 설정 setter
                        this.id = id;
                    }
                    public String getId() {        --회원 아이디 getter
                        return id;
                    }
                }

        --SQL문 구현
            --VO에서 정의한 객체 정보에 맞춰 정보가 저장될 '테이블 정보'를 생성한다. (DB 테이블 정의 및 생성)
                CREATE TABLE CUSTOMER
                (
                    ID VARCHAR(20) NOT NULL COMMENT '아이디',
                    PW VARCHAR(20) COMMENT '패스워드',
                    NM VARCHAR(10) COMMENT '이름',
                    PRIMARY KEY(ID)
                ) COMMENT '회원정보';

            --회원 이름 검색 및 입력을 위한 SQL문을 Mybatis XML로 구현한다.        (Mybatis XML 구현)
                <mapper namespace = "customer.sql">
                    --회원 이름을 통해 회원 테이블 조회
                    <select id = "selectJoin"
                            parameterType = "customer.vo.JoinVO"
                            resultType = "customer.vo.JoinVO">
                        SELECT * FROM CUSTOMER
                        WHERE(nm =# {nm})
                    </select>

                    --아이디,패스워드,이름 등을 회원 테이블에 저장
                    <insert id = "insertJoin"
                            parameterType = "customer.vo.JoinVO">
                        INSERT INTO CUSTOMER values(#{id}, #{pw}, #{nm})
                    </insert>
                </mapper>

        --DAO(Data Access Object) 구현
            --DAO(데이터 접근 객체): 특정 타입의 DB에 추상 인터페이스를 제공하는 객체. 세부내용 노출 없이 데이터 조작.
            --DAO를 통해 SQL을 구현한 XML id를 호출하여 조작을 수행한다.
                public class JoinDAO {
                    --회원가입 DAO 프로토타입
                    public int selection(JoinVO vo) throws Exception {
                        return sqlSession.selectJoin("customer.sql.selectJoin", vo);
                        --회원가입 데이터 조회 프로토타입
                    }
                    public void insertJoin(JoinVO vo) {
                        sqlSession.insertJoin("customer.sql.insertJoin", vo);
                        --회원가입 데이터 입력
                    }
                }

        --Service 클래스 구현
            --회원 등록을 위해 JoinDAO를 호출하는 JoinService를 선언 및 구현한다.
                @Service
                public class JoinService implements IMenberService {
                    @Autowired
                    JoinDAO dao;

                    @Override
                    public void insertJoin(JoinVO join) {      --회원 조회 후 결과 저장
                        JoinVO member = dao.selectJoin(join);  --회원 등록
                        dao.insertJoin(member);
                    }
                }

        --Controller 클래스 구현
            --핵심이 되는 컨트롤러에 회원가입 단위 모듈의 메인 로직을 구현한다.
        
        --Validation 로직 구현
            --회원가입이 성공/실패 시 다른 메세지를 호출하는 검증 로직을 구현한다.

    --Front End :                                                                  <-> 화면 구현
<배치 프로그램 구현>
--배치 프로그램(Batch Program)이란? --사용자와의 상호 작용 없이 일련의 작업들을 정기적으로 반복 수행하거나 정해진 규칙에 따라 일괄 처리하는 방식.

--배치 스케줄러(Batch Scheduler)이란? --일괄 처리(Batch Processing)를 위해 주기적으로 발생하거나 반복적으로 발생하는 작업을 지원하는 도구.

--배치 스케줄러의 종류
    --스프링 배치(Spring Batch): 스프링 프레임워크의 3대 요소를 모두 사용할 수 있는 스케줄러 배치 애플리케이션.
    --쿼츠 스케줄러(Quartz Scheduler): 스프링 프레임워크에 플러그인되어 수행하는 작업과, 실행 스케줄을 정의하는 트리거를 분리하여 유연성을 제공하는 오픈 소스 기반 스케줄러
    