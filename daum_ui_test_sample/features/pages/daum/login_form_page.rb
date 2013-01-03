# -*- encoding : utf-8 -*-
class LoginFormPage
  include PageObject
  include DataMagic

  page_url 'http://login.daum.net/accounts/loginform.do'

  text_field(:id, :name => 'id')
  text_field(:pw, :name => 'pw')

  button(:login, :id => 'loginBtn')

  def exec_login(data = {})
    populate_page_with data_for('test_user', data)
    self.login
  end
end
