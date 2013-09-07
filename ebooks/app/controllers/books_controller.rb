class BooksController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @book = current_user.books.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
