class Material < ActiveRecord::Base
  belongs_to :skill
  belongs_to :quality
  belongs_to :material_type
  alias_attribute :rank, :grade
end
