# -*- encoding : utf-8 -*-
require "rubygems"
require "watir-webdriver"
require "page-object"
require "data_magic"

World PageObject::PageFactory

browser=Watir::Browser.new :chrome

# remote, android
#browser=Watir::Browser.new :remote, :url => 'http://127.0.0.1:55555/wd/hub'

# remote, chrome
#browser=Watir::Browser.new :remote, :url => 'http://127.0.0.1:4444/wd/hub' , :desired_capabilities => :chrome



Before do
  @browser = browser
end

at_exit do
  browser.close
end
