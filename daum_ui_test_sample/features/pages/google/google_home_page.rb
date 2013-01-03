# -*- encoding : utf-8 -*-


class GoogleHomePage
  include PageObject

  page_url "www.google.com"

  text_field(:q, :name => 'q')
  button(:btn, :name => 'btnG')

  def search_for term
    self.q = term
    self.btn
  end
end

