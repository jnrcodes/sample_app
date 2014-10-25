class Material < ActiveRecord::Base
  belongs_to :rank
  belongs_to :skill
  belongs_to :quality
  belongs_to :material_type
end
