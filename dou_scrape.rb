require 'capybara'

class DouParser
  include Capybara::DSL
  Capybara.default_driver = :selenium

  def find_titles
    visit "http://dou.ua/lenta/"
    page.all(:xpath, "//article/h2/a").map { |i| i.text }
  end
end 
 
articles = DouParser.new
puts articles.find_titles
