class Book < ApplicationRecord
    # validate if name attribute exists
    validates :name, presence: true

    # set up one-to-one connection to author model
    belongs_to :author, required: false
end
