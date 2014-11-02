class ChangeRankToGrade < ActiveRecord::Migration
  def change
     remove_column :materials, :rank
     add_column :materials, :grade, :integer
  end
end
