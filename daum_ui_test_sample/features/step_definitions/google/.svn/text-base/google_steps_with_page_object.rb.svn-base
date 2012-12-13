
When /^구글에서 검색을 수행 한다$/ do
  visit_page(GoogleHomePage).search_for "cucumber"
  sleep 2
end


Given /^구글홈에 접속한다$/ do
  visit_page GoogleHomePage
end

When /^키워드 "(.*?)"로 검색을 수행 한다$/ do |q|
  on_page GoogleHomePage do |page|
    page.search_for q
  end
  sleep 2
end

Then /^검색 창에서 "(.*?)" 을\/를 볼 수 있다$/ do |q|

  on_page GoogleDetails do |page|
    page.q.should == q
  end
end

Then /^검색 결과는 "(.*?)" 을\/를 포함한다$/ do |txt|
  on_page GoogleDetails do |page|
    page.text.should include(txt)
  end
end

