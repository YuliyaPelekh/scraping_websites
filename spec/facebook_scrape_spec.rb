require_relative '../facebook_scrape'
require 'capybara/rspec'

RSpec.describe FacebookParser do
  include Capybara::DSL
  Capybara.default_driver = :selenium

  it 'visits my page' do
    visit "http://www.facebook.com/jpelekh"
    expect(page).to have_content('Yuliya Pelekh')
  end
 
  it 'returns an array of Facebook friends' do
    friends = FacebookParser.new.find_friends
    expect(friends).to include('Demyd Dzyuban', 'Iryna Peretiatko')	
  end
end
