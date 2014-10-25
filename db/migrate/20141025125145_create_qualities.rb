class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
      t.text :name
      t.text :color

      t.timestamps
    end
  end
end
