class RemoveNinjaFromDojos < ActiveRecord::Migration
  def change
    remove_column :dojos, :ninja_id, :integer
  end
end
