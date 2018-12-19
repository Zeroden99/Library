class BooksController < ApplicationController
  before_action :authenticate_user! 
  before_action :find_book, only: [:show, :edit, :update, :destroy]

 def index
  	@books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to root_path
   
    end  
  end
  
  def show

  end
  
  def edit
  end
  
  def update
    if @book.update(book_params)
     
      redirect_to book_path(@book.id)
   
    end
    
  end
  
  def destroy
    @book.destroy
    redirect_to root_path
  end
  
private

  def book_params
    params.require(:book).permit(:user_id, :name, :body, {libraries: []})
  end
  
  def find_book
    @book = Book.find_by(id: params[:id])
  end
end