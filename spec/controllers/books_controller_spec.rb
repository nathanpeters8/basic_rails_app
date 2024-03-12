require 'rails_helper'

RSpec.describe BooksController, type: :controller do
    describe 'POST /books' do
        it 'create a new book object' do
            # create post request to create method in BooksController
            post :create, params: { name: 'Harry Potter' }
            # we expect Book.count to equal 1
            expect(Book.count).to eq(1)
        end
    end
end
