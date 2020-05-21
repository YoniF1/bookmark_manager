describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      Bookmark.add(url:"http://www.google.com", title: "Google")
      Bookmark.add(url:"http://www.destroyallsoftware.com", title: "Destroyallsoftware")
      Bookmark.add(url:"http://www.makersacademy.com", title: "Makers Academy")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      # expect(bookmarks.first.id).to eq bookmarks.id
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end
  end
end
