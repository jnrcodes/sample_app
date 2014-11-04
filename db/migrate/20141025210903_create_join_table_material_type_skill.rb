class CreateJoinTableMaterialTypeSkill < ActiveRecord::Migration
  def change
    create_join_table :material_types, :skills do |t|
       t.index [:material_type_id, :skill_id]
       t.index [:skill_id, :material_type_id]
    end
  end
end
