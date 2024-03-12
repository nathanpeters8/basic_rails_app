require 'rails_helper'

RSpec.describe BooksController, type: :controller do
    render_views
    describe 'POST /books' do
        # test for creating a new book object
        it 'create a new book object' do
            # create post request to create method in BooksController
            post :create, params: { name: 'Harry Potter' }
            # we expect Book.count to equal 1
            expect(Book.count).to eq(1)
        end
        # test for checking endpoint response
        it 'responds with a book object' do
            post :create, params: {name: 'Harry Potter'}, format: :json

            expected_response = {
                book: {
                    name: 'Harry Potter'
                }
            }

            expect(response.body).to eq(expected_response.to_json)
        end
    end
end
