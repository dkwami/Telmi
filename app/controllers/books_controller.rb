class BooksController < ApplicationController
  def new
    @book = Book.new
    @user = User.all
  end

  private
    def book_params
      params.require(:book).permit(:title, :user_ids => [])
    end
end
