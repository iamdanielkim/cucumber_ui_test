# -*- encoding : utf-8 -*-
require "rubygems"
require "watir-webdriver"
require "page-object"

World PageObject::PageFactory

browser=Watir::Browser.new :chrome



Before do
  @browser = browser
end

at_exit do
  browser.close
end
