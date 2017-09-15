require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('words in list', {:type=> :feature}) do
  it('processes the user entry and displays word') do
    visit('/')
    fill_in('word', :with=> 'Apple')
    click_button('Add Word')
    expect(page).to have_content('Word: Apple')
  end

  it('processes the user entries and displays words') do
    visit('/')
    fill_in('word', :with=> 'Apple')
    click_button('Add Word!')
    fill_in('word', :with=> 'Banana')
    click_button('Add Word!')
    expect(page).to have_content('Word: Apple')
    expect(page).to have_content('Word: Banana')
  end

  it('displays error message when clicking "Add Word!" with an empty input field.') do
    visit('/')
    fill_in('word', :with=> '')
    click_button('Add Word!')
    expect(page).to have_content("Please enter a word.")
  end
end
