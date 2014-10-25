class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.text :name
      t.text :server_type
      t.text :region
      t.text :server_language
      t.text :note

      t.timestamps
    end
  end
end
