class Book < ApplicationRecord
    # validate if name attribute exists
    validates :name, presence: true
end
