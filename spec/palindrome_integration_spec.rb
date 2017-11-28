require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome path', {:type => :feature}) do
  it('processes the user entry and returns if it is a palindrome or not') do
    visit('/')
    fill_in('user_word', :with => 'kayak')
    click_button('Go!')
    expect(page).to have_content('You inputted word kayak
    is a palindrome.
    Return to home page')
  end
end
