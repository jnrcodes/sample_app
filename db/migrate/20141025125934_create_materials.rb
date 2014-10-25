class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.text :name
      t.integer :material_type
      t.references :rank, index: true
      t.references :skill, index: true
      t.references :quality, index: true

      t.timestamps
    end
  end
end
