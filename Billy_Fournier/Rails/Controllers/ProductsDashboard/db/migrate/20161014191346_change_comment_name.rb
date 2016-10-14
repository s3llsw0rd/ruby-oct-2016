class ChangeCommentName < ActiveRecord::Migration
  def change
    rename_column :comments, :comment, :c_text
  end
end
