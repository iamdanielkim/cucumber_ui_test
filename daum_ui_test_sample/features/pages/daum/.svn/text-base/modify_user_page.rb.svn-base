class ModifyUserPage
  include PageObject
  include DataMagic

  page_url 'https://user.daum.net/modifyuser/modifyuser.daum'

  #step 1
  text_field(:password, :name => 'password')
  button(:info_next, :name => 'info_next')

  #step 2
  link(:maillingInfo, :id => 'maillingInfo')
  link(:protectInfo, :id => 'protectInfo')

  button(:info_cfm, :name => '_target4')
  button(:mail_cfm, :name => 'info_next2')
  button(:security_cfm, :name => 'info_next3')

  def reconfirm_password(pw = 'ghldnjswjdqh')
    self.password = pw
    self.info_next
  end

  def complete_modification(btn = 'info_cfm', data = {})
    #populate_page_with data_for('datakey', data)
    self.send(btn)
  end
end