class DaumFindIdStep3
  include PageObject

  page_url 'https://user.daum.net/finduser/findid.do?step=02'

  button(:response_auth, :name => "response_auth")
  text_field(:auth_code, :name => "authCode")
  button(:submit, :value => "확인")

  def complete_auth( auth_code = '111111' )
    self.response_auth
    self.auth_code = auth_code
    self.submit
  end

end