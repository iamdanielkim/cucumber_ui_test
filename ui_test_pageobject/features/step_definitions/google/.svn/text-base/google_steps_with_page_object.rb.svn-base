

Given /^구글홈에 접속한다$/ do
  visit_page GoogleHomePage
end


When /^키워드 "(.*?)"로 검색을 수행 한다$/ do |q|
  on_page(GoogleHomePage).search_for q

  sleep 2
end

Then /^검색 창에서 "(.*?)" 을\/를 볼 수 있다$/ do |q|
  on_page(GoogleDetails).q.should == q
end

Then /^검색 결과는 "(.*?)" 을\/를 포함한다$/ do |txt|
  on_page(GoogleDetails).text.should include(txt)

end

