class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :fname, :first_name
  end
end
