class MaterialPricePoint < ActiveRecord::Base
  belongs_to :material
  belongs_to :server
  belongs_to :user
end
