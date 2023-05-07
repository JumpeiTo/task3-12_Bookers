class BooksController < ApplicationController
  
  #一覧　新規投稿画面
  def index
    @books = Book.all
  end
  
  #Create Book(保存)ボタン→詳細画面へ
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end