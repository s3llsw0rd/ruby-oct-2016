class RemoveStringFromNinja < ActiveRecord::Migration
  def change
    remove_column(Ninja,"string")
  end
end
