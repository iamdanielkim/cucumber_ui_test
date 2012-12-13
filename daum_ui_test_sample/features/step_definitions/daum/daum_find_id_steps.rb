

Given /^아이디 찾기 화면으로 이동한다$/ do
  visit_page FindIdPage
end



When /^주민번호로 아이디를 찾는다$/ do
  on_page(FindIdPage).find_id_by_ssn
end

Then /^"(.*?)"을 확인한다$/ do |txt|
   on_page FindIdPage do |page|
     page.text.should include txt
   end
end

When /^휴대폰\/전화번호찾기로 아이디를 찾는다$/ do
  on_page(FindIdPage).select_phone
  on_page(FindIdPage).find_id_by_phone

end
