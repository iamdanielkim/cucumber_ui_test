require "rubygems"
require "watir-webdriver"


Given /^구글홈에 접속한다$/ do
  @browser=Watir::Browser.new :chrome
  @browser.goto "www.google.com"
end


When /^나는 "(.*?)"를 검색창에 입력한다$/ do |item|
  @browser.text_field(:name,"q").set( item)
end

When /^나는 검색을 수행한다$/ do
  @browser.button(:name, "btnG").click
  sleep 2
end


Then /^나는 검색 창에서 "(.*?)" 을\/를 볼 수 있다$/ do |item|
  @browser.text_field(:name, "q") == item

end


Then /^나는 검색 결과에서 "(.*?)" 을\/를 볼 수 있다$/ do |item|
  @browser.text.should include(item)
end

When /^나는 구글에 로그인을 한다$/ do
  visit_page(GoogleLoginPage).exec_login
end




