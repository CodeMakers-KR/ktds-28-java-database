-- 사원 번호가 108번인 사원의 사원번호, 이름, 성을 조회한다.
SELECT EMPLOYEE_ID
	 , FIRST_NAME
	 , LAST_NAME
  FROM EMPLOYEES
-- WHERE EMPLOYEE_ID = 108
 WHERE 108 = EMPLOYEE_ID  
;

-- 이름이 'Steven'인 사원의 이름과 성, 급여, 근무부서번호를 조회한다.
SELECT FIRST_NAME
	 , LAST_NAME
	 , SALARY
	 , DEPARTMENT_ID
  FROM EMPLOYEES
 WHERE FIRST_NAME = 'Steven'
;
-- 근무부서 번호가 50인 사원의 이름, 성, 상사사원번호, 직무 아이디를 조회한다.
-- 이 때, 상사사원번호로 내림차순 정렬한다.
SELECT FIRST_NAME
	 , LAST_NAME
	 , MANAGER_ID
	 , JOB_ID
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 50
 ORDER BY MANAGER_ID DESC
;
-- 도시의 이름이 'Seattle' 인 지역의 지역 번호, 주소, 주, 국가아이디를 조회한다.
SELECT LOCATION_ID
	 , STREET_ADDRESS
	 , STATE_PROVINCE
	 , COUNTRY_ID
  FROM LOCATIONS
 WHERE CITY = 'Seattle'
;
-- 101번 사원의 직무변경이력 중 직무 시작일, 직무 종료일, 직무 아이디, 근무 부서 아이디를 조회한다.
-- 이 때, 직무 시작일로 오름차순 정렬한다.
SELECT START_DATE
	 , END_DATE
	 , JOB_ID
	 , DEPARTMENT_ID
  FROM JOB_HISTORY
 WHERE EMPLOYEE_ID = 101
 ORDER BY START_DATE ASC
;
-- 급여가 10000 이상인 사원의 사원번호, 직무아이디, 급여, 근무부서 번호를 조회한다.
-- 직무아이디 오름차순, 근무부서번호 오름차순, 급여 내림차순으로 정렬한다.
SELECT EMPLOYEE_ID
	 , JOB_ID
	 , SALARY
	 , DEPARTMENT_ID
  FROM EMPLOYEES
 WHERE SALARY >= 10000
 ORDER BY JOB_ID ASC
 	 , DEPARTMENT_ID ASC
 	 , SALARY DESC
;
-- 커미션 비율이 0.2보다 작은 사원의 급여, 커미션 비율을 조회한다.
-- 급여 오름차순 정렬한다.
SELECT SALARY
	 , COMMISSION_PCT
  FROM EMPLOYEES
 WHERE COMMISSION_PCT < 0.2
 ORDER BY SALARY ASC
;
-- 근무부서 번호가 50이 아닌 사원들의 부서번호, 직무아이디를 조회한다.
SELECT DEPARTMENT_ID
	 , JOB_ID
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID != 50
;
-- 부서의 이름, 부서장의 번호, 지역의 번호를 조회한다.
-- 이 때, 부서장의 번호로 오름차순 정렬한다.
SELECT DEPARTMENT_NAME
	 , MANAGER_ID
	 , LOCATION_ID
  FROM DEPARTMENTS
 ORDER BY MANAGER_ID ASC
;

-- 부서의 지역번호를 중복없이 조회한다.
-- 이 때, 지역번호로 내림차순 정렬한다.
SELECT DISTINCT LOCATION_ID
  FROM DEPARTMENTS
 ORDER BY LOCATION_ID DESC
;

-- 사원의 급여와 커미션 비율, 이름, 성을 조회한다.
-- 이때, 급여로 오름차순 정렬하고 같은 급여가 있을 경우 커미션 비율로 내림차순 정렬한다.
SELECT SALARY
	 , COMMISSION_PCT
	 , FIRST_NAME
	 , LAST_NAME
  FROM EMPLOYEES
 ORDER BY SALARY ASC
     , COMMISSION_PCT DESC
;

-- 모든 사원들의 이름, 성, 급여를 중복없이 조회한다.
SELECT DISTINCT FIRST_NAME
	 , LAST_NAME
	 , SALARY
  FROM EMPLOYEES
;

-- 모든 사원들의 급여와 커미션을 중복없이 조회한다.
SELECT DISTINCT SALARY
	 , COMMISSION_PCT
  FROM EMPLOYEES
;

-- 현재 날짜와 시간을 "연-월-일 시:분:초" 형태로 보여준다.
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS')
	 , TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS')
  FROM DUAL
;  

-- 현재 날짜와 시간을 보여준다.
SELECT SYSDATE
  FROM DUAL
;
-- 현재 날짜에서 하루를 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 1
  FROM DUAL
;
-- 현재 날짜에서 이틀을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 2
  FROM DUAL
;
-- 현재 날짜에서 한달을 더한 날짜와 시간을 보여준다.
SELECT ADD_MONTHS(SYSDATE, 1)
  FROM DUAL
;
-- 현재 날짜에서 한달을 뺀 날짜와 시간을 보여준다.
SELECT ADD_MONTHS(SYSDATE, -1)
  FROM DUAL
;
-- 현재 날짜에서 이틀을 뺀 날짜와 시간을 보여준다.
SELECT SYSDATE - 2
  FROM DUAL
;
-- 현재 날짜에서 하루를 뺀 날짜와 시간을 보여준다.
SELECT SYSDATE - 1
  FROM DUAL
;
-- 현재 날짜에서 1시간을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 1 / 24
  FROM DUAL
;

-- 현재 날짜에서 5시간을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 5 / 24
  FROM DUAL
;

-- 현재 날짜에서 10시간을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 10 / 24
  FROM DUAL
;

-- 현재 날짜에서 1분을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 1 / 24 / 60
  FROM DUAL
;

-- 현재 날짜에서 13분을 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 13 / 24 / 60
  FROM DUAL
;
-- 현재 날짜에서 49초를 더한 날짜와 시간을 보여준다.
SELECT SYSDATE + 49 / 24 / 60 / 60
  FROM DUAL
;


SELECT EMPLOYEE_ID
     , FIRST_NAME
     , LAST_NAME
     , EMAIL
  FROM EMPLOYEES
;

-- DEPARTMENTS 테이블에서
-- DEPARTMENT_ID, MANAGER_ID만 조회해본다.
SELECT DEPARTMENT_ID
     , MANAGER_ID
  FROM DEPARTMENTS
;

-- COUNTRIES 테이블에서
-- COUNTRY_ID, COUNTRY_NAME, REGION_ID를 조회해본다.
SELECT COUNTRY_ID
	 , COUNTRY_NAME
	 , REGION_ID
  FROM COUNTRIES
;

SELECT *
  FROM COUNTRIES
;

-- 1. 사원의 이름과 성 그리고 급여를 조회한다.
SELECT FIRST_NAME
	 , LAST_NAME
	 , SALARY
  FROM EMPLOYEES
;
-- 2. 부서의 부서장 번호와 부서가 존재하는 지역의 번호를 조회한다.
SELECT MANAGER_ID
	 , LOCATION_ID
  FROM DEPARTMENTS
;
-- 3. 국가의 아이디, 이름, 국가가 존재하는 대륙의 번호를 조회한다.
SELECT COUNTRY_ID
	 , COUNTRY_NAME
	 , REGION_ID
  FROM COUNTRIES
;
-- 4. 직무의 이름과 최대급여를 조회한다.
SELECT JOB_TITLE
	 , MAX_SALARY
  FROM JOBS
;
-- 5. 지역의 도시명과 주소, 우편번호를 조회한다.
SELECT CITY
	 , STREET_ADDRESS
	 , POSTAL_CODE
  FROM LOCATIONS
;
-- 6. 사원의 상사사원번호와 입사일 그리고 연락처를 조회한다.
SELECT MANAGER_ID
	 , HIRE_DATE
	 , PHONE_NUMBER
  FROM EMPLOYEES
;

-- 7. 직무가 변경된 사원의 이전 직무아이디, 이전 직무를 수행한 부서의 아이디, 
--    이전 직무를 시작한 날짜를 조회한다.
SELECT JOB_ID
	 , DEPARTMENT_ID
	 , START_DATE
  FROM JOB_HISTORY
;
-- 8. 대륙의 아이디와 이름을 조회한다.
SELECT REGION_ID
	 , REGION_NAME
  FROM REGIONS
;
-- 9. 사원의 직무아이디와 부서번호만 조회한다.
SELECT JOB_ID
	 , DEPARTMENT_ID
  FROM EMPLOYEES
;

-- 10. 사원의 이름, 성, 급여, 입사일, 부서의 이름, 부서장의 이름, 
--     지역의 도시명, 국가명, 대륙의 이름을 조회한다.