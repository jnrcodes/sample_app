class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :number

      t.timestamps
    end
  end
end
