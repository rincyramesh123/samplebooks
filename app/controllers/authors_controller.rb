class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def show
    @authors = Author.find(params[:id])
  end
  def new
    @authors = Author.new
  end
  def create
    @authors = Author.new(author_params)
    if @authors.save
      redirect_to @authors
    else
      render:new, status: unprocessable_entity
    end
  end
  private
  def author_params
      params.require(:author).permit(:name)
    end
end
