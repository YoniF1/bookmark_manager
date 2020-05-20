require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    # connects to PG database, new PG object created
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    # retrieves bookmark records with SELECT * sql query
    result.map { |bookmark| bookmark['url'] }
    # creates new array, iterates over each element in table and returns rows of URLs
  end
end
