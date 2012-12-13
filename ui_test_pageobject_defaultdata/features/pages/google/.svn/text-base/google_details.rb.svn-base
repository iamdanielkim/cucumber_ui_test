class GoogleDetails
  include PageObject
  include DataMagic

  page_url "http://www.google.co.kr/search"

  text_field(:q, :name => 'q')
  button(:btn, :name => 'btnG')

  def search_for(data = {})
    populate_page_with data_for("search_for", data)
    btn
  end


end