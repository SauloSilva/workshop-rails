class BooksController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  before_filter :authorized_book!, only: [:edit, :update, :destroy]

  def index
    @books = Book.paginate(page: params[:page], per_page: 6)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = current_user.books.new
  end

  def create
    @book = current_user.books.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render action: :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[book_params])
      redirect_to book_path(@book)
    else
      render action: :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    else
      render action: :edit
    end
  end

  private
  def book_params
    params.require(:book).permit!
  end

  def authorized_book!
    book = Book.find(params[:id])
    if book.user_id != current_user.id
      redirect_to books_path, alert: 'This book is not your!'
    end
  end
end
