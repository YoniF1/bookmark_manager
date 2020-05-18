describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.makers.tech")
    end
  end
end
