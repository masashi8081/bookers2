class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
