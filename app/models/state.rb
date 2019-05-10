class State < ApplicationRecord
    has_many :regions, dependent: :destroy
end
