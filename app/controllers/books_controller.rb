class BooksController < ApplicationController
	def create
		@authors = Author.find(params[:author_id])
        @book = @authors.books.create(book_params)
        redirect_to author_books_path(@authors)
  end

  private
    def book_params
      params.require(:book).permit(:bname)
    end
end
