class Material < ActiveRecord::Base
  belongs_to :rank
  belongs_to :skill
  belongs_to :quality
end
