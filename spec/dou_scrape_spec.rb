require_relative '../dou_scrape'
require 'capybara'

RSpec.describe DouParser do
 
  it 'returns an array of Dou titles' do
    articles = DouParser.new.find_titles
  expect(articles).to include('О переезде и жизни в Польше', 'Какая польза от программистов?')	
  end
end
