class ChangeMaterialMaterialTypeToReference < ActiveRecord::Migration
  def up 
    remove_column :materials, :material_type
    add_reference :materials, :material_type
  end
  def down 
    remove_reference :materials, :material_type
    add_column :materials, :material_type, :integer
  end
end
