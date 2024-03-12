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
        @book = Book.create(name: params[:name])

        # render json file 
        # render json: { book: new_book }

        # render jbuilder file (full path)
        # render '../../app/views/books/create'

        # render jbuilder file (short)
        render 'books/create'

        # this line also works
        # render :create, format: :json
    end
end
