class Region < ApplicationRecord
  has_many :resorts, dependent: :destroy
  belongs_to :state
end
