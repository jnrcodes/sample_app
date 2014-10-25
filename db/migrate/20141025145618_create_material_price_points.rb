class CreateMaterialPricePoints < ActiveRecord::Migration
  def change
    create_table :material_price_points do |t|
      t.references :material, index: true
      t.integer :price
      t.references :server, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
