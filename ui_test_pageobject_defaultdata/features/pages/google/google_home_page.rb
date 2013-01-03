# -*- encoding : utf-8 -*-


class GoogleHomePage
  include PageObject
  include DataMagic

  page_url "www.google.com"

  text_field(:q, :name => 'q')
  button(:btn, :name => 'btnG')

  def search_for(data = {})
    populate_page_with data_for("search_for", data)
    self.btn
  end
end

