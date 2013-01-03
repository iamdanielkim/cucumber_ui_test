# -*- encoding : utf-8 -*-
class GoogleDetails
  include PageObject

  page_url "http://www.google.co.kr/search"

  text_field(:q, :name => 'q')
  button(:btn, :name => 'btnG')

  def search_for term
    q = term
    btn
  end


end
