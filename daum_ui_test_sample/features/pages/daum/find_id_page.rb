# -*- encoding : utf-8 -*-
class FindIdPage
  include PageObject
  include DataMagic

  page_url 'https://user.daum.net/finduser/findid.do'


  text_field(:name, :name => 'name' )
  text_field(:ssn1, :name => 'ssn1')
  text_field(:ssn2, :name => 'ssn2')
  checkbox(:agreeNum, :id => 'agreeNum')
  button(:find_next, :name => "find_next")

  radio_button(:phone, :value => 'PHONE' )
  text_field(:name2, :id => 'name2' )
  text_field(:phone1, :name => 'phone1')
  text_field(:phone2, :name => 'phone2')
  text_field(:phone3, :name => 'phone3')
  button(:find_next2, { :name => "find_next", :index => 1})


  def find_id_by_ssn(data = { })
    populate_page_with data_for('find_id_by_ssn', data)
    self.find_next
  end

  def find_id_by_phone(data = { })
    populate_page_with data_for('find_id_by_phone', data)

    self.find_next2
  end


end
