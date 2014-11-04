class Skill < ActiveRecord::Base
  has_and_belongs_to_many :material_types
  has_many :materials, through: :material_types
end
