class Material < ActiveRecord::Base
  belongs_to :quality
  belongs_to :material_type
  has_many :skills, through: :material_type
  alias_attribute :rank, :grade
end
