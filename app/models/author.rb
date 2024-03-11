class Author < ApplicationRecord
    # indicate an author can have many books
    has_many :books
end
