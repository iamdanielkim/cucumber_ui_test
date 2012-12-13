Feature: 아이디 찾기
  잊어버린 아이디를 찾기위해, 나는 개인 사용자로써 ID를 찾는다.

  Background:
    Given 아이디 찾기 화면으로 이동한다

  Scenario: 실명회원 주민등록번호로 찾기
    When 주민번호로 아이디를 찾는다
    Then "iamdanie****"을 확인한다

  Scenario: 비실명회원 휴대폰/전화번호로 찾기
    When 휴대폰/전화번호찾기로 아이디를 찾는다
    Then "iamdaniel.**"을 확인한다
