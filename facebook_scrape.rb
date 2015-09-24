require 'capybara'

class FacebookParser
  include Capybara::DSL
  Capybara.default_driver = :selenium

  def log_in
    visit "http://www.facebook.com/jpelekh"
    fill_in 'email', :with => 'jpelekh@mail.ru'
    fill_in 'pass', :with => 'Julka32' 
    click_button 'u_0_0'
  end 

  def search #searches for facebook friends names
    page.all(:xpath, "//div[@class = 'name']").map { |a| a.text }
  end

  def find_friends
    log_in
    search
  end 

end 
 
friends = FacebookParser.new
puts friends.find_friends
