# -*- encoding : utf-8 -*-
Given /^로그인한 상태이다$/ do
  visit_page(LoginFormPage).exec_login
  sleep 2
end

When /^회원정보 정보 변경 페이지에 접속한다$/ do
  visit_page(ModifyUserPage).reconfirm_password
end

And /^내 정보를 수정한다$/ do
  on_page(ModifyUserPage).complete_modification
end

And /^내 메일정보를 수정한다$/ do
  on_page(ModifyUserPage).maillingInfo
  on_page(ModifyUserPage).complete_modification 'mail_cfm'
end

And /^내 정보보호를 수정한다$/ do
 on_page(ModifyUserPage).protectInfo
 on_page(ModifyUserPage).complete_modification 'security_cfm'
end

Then /^변경완료 화면에서 "(.*?)" 확인한다$/ do |txt|
  on_page(ModifyUserPage).text.should include(txt)
end




