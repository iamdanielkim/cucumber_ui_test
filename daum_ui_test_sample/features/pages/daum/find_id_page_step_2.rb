class DaumFindIdStep2
  include PageObject

  page_url 'https://user.daum.net/finduser/findid.do?step=02'

  button(:find_next, :name => "find_next")

end