class RemoveOwnerIdFromBlog < ActiveRecord::Migration
  def change
      remove_column("blogs",'owner_id')
  end
end
