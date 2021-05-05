class Size < ApplicationRecord
    has_many :variations
    has_many :products, through: :variations

end
