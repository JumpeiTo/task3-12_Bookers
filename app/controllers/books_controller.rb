# Booksコントローラー

class BooksController < ApplicationController
  
  #一覧　新規投稿画面
  def index
    @books = Book.all
    @book = Book.new
  end
  
  #Create Book(保存)ボタン→詳細画面へ
  def create
    @book = Book.new(book_params)
    
    if @book.save
      redirect_to book_path(@book.id)
      
    else
      @books = Book.all
      render :index
    end
  end

  # 詳細画面
  def show
    @book = Book.find(params[:id])
  end

  #編集画面
  def edit
    @book = Book.find(params[:id])
  end
  
  # 更新機能
  def update
    book = Book.find(params[:id])
    
     book.update(book_params)
      redirect_to book_path(book.id)

  end
  
  #　削除機能
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end