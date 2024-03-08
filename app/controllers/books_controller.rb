class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        # render plain text
        # render plain: "This works!"

        # render json
        # render json: {name: 'Nash'}

        # render json with params
        #render json: params
        
        # store input data in new record in database
        new_book = Book.create(name: params[:name], publishing_year: params[:publishing_year], num_of_pages: params[:num_of_pages])
        render json: { book: new_book }
    end
end
