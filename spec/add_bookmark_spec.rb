require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '#add' do
    it 'adds a bookmark to the manager' do
      bookmark = Bookmark.add(url:"http://www.facebook.com", title:'Facebook')
      persisted_data = persisted_data(id: bookmark.id)
  #    persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Facebook'
      expect(bookmark.url).to eq 'http://www.facebook.com'
    end
  end
end
