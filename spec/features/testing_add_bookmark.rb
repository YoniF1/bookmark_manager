require 'spec_helper.rb'
require 'pg'

feature 'Testing the ability to add a bookmark ' do
  scenario 'Can add a bookmark ' do
    visit('/add')
    fill_in('url', with:'http://www.facebook.com')
    fill_in('title' with: 'Facebook')
    click_button('Submit')
    expect(page).to have_content('http://www.facebook.com')
    expect(page).to have_content('Facebook')
  end
end
