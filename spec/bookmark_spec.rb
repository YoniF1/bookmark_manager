require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark = Bookmark.add(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.add(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.add(url: "http://www.google.com", title: "Google")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '#delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.add(title: "Google", url: 'google.com')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end

  describe '#update' do
    it 'updates a bookmark' do
      bookmark = Bookmark.add(url: 'http://www.google.com', title: 'Google')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.bbc.co.uk', title: 'BBC')
      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'BBC'
      expect(updated_bookmark.url).to eq 'http://www.bbc.co.uk'
    end
  end

  describe '#find' do
    it 'finds the bookmark they have entered' do
    bookmark = Bookmark.add(title: "Google", url: 'http://www.google.com')
    result = Bookmark.find(id: bookmark.id)
    expect(result).to be_a Bookmark
    expect(result.id).to eq bookmark.id
    expect(result.title).to eq 'Google'
    expect(result.url).to eq 'http://www.google.com'
    end 
  end
end
