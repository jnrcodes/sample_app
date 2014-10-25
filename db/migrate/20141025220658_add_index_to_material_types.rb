class AddIndexToMaterialTypes < ActiveRecord::Migration
  def change
    add_index :material_types, :name, unique: true
  end
end
