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
    else render 'new'
   
    end  
  end
  
  def show
    @comments = @book.book_comments

  end
  
  def edit
  end
  
  def update
  
    
  end
  
  def destroy
    
  end
  
private

  def book_params
    params.require(:book).permit(:user_id, :name, :body, :image, {libraries: []})
  end
  
  def find_book
    @book = Book.find_by(id: params[:id])
  end
end