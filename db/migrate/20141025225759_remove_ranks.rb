class RemoveRanks < ActiveRecord::Migration
  def change
    drop_table :ranks
  end
end
