class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :name

      t.timestamps
    end
  end
end
