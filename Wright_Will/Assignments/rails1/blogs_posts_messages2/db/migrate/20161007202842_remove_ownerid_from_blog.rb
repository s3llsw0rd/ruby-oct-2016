class RemoveOwneridFromBlog < ActiveRecord::Migration
  def change
      remove_index('blogs','owner_id')
  end
end
