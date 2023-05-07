class BooksController < ApplicationController
  
  #一覧　新規投稿画面
  def index
    @bool = Book.new
  end
  
  #Create Book(保存)ボタン→詳細画面へ
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end

  def show
  end

  def edit
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end