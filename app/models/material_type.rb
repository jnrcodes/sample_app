class MaterialType < ActiveRecord::Base
  has_and_belongs_to_many :skills
  has_many :materials
end
