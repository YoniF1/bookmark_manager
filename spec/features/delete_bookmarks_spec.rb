require 'bookmark'
require 'pg'

feature "Delete bookmark" do
  scenario 'it deletes a selected bookmark' do
    Bookmark.add(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks')
    click_button('Delete')
    expect(page).not_to have_content ('Makers Academy')
  end
end
