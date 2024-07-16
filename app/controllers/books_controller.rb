class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(params[:id])
  end
  def show
  end

  def index
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
