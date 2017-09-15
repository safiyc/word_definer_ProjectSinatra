require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('words in list', {:type => :feature}) do
  it('processes the user entry and displays word') do
    visit('/')
    fill_in('word', :with => 'Apple')
    click_button('Add Word')
    expect(page).to have_content('Word: Apple')
    Word.clear
  end
end
