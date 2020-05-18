require 'spec_helper.rb'

feature 'Testing the index page' do
  scenario 'Can print hello world' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end
