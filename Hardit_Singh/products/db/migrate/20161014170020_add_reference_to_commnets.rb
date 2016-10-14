class AddReferenceToCommnets < ActiveRecord::Migration
  def change
    add_reference :products, :comments
  end
end
