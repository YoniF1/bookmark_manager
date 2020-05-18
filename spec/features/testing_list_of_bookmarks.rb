require 'spec_helper.rb'

feature 'Testing the list of bookmarks' do
  scenario 'Can return a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.makers.tech"
  end
end
