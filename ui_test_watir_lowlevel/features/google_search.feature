Feature: 구글 검색
  특정 내용을 찾기 위해
  나는 사용자 로써 검색을 한다.

Scenario: keyword 구글 검색
  Given 구글홈에 접속한다
  When 나는 "cucumber"를 검색창에 입력한다
  And 나는 검색을 수행한다
  And 나는 구글에 로그인을 한다
  Then 나는 검색 창에서 "cucumber" 을/를 볼 수 있다
  And  나는 검색 결과에서 "cucumber - 오이" 을/를 볼 수 있다









