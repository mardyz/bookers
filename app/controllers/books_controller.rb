class BooksController < ApplicationController
  def new
    @books = Books.new
  end

  def create
    @books = Books.new(books_params)
    @books.save
    redirect_to 'show'
  end

  def index
  end

  def show
  end

  def edit
  end

private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end
