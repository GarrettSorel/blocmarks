class AddBookmarkRefToLikes < ActiveRecord::Migration
  def change
    add_reference :likes, :bookmark, index: true, foreign_key: true
  end
end
