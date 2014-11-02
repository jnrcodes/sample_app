class AddIndexToMaterials < ActiveRecord::Migration
  def change
    add_index :materials, :name, unique: true
  end
end
