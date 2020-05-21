require './lib/bookmark'

feature 'updating bookmarks in bookmark manager' do
  scenario 'needing to change a bookmark' do
    bookmark = Bookmark.add(url: 'http://www.google.com', title: 'Google')
    visit('/bookmarks')
    # expect(page).to have_content('http://www.google.com')
    click_button('Edit')
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button('Submit')

    # expect(current_path).to eq '/bookmarks/#{bookmark.id}'
    expect(page).to have_content 'http://www.bbc.co.uk'
    expect(page).not_to have_content 'http://www.google.com'
  end
end
