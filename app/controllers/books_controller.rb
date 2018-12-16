class BooksController < ApplicationController
  
  def index
  	@books = Book.all
  end 

  def new
  	@books = Book.new
  end
  

 def create
 end



  def edit
  end

  def show
  end
  end
  def update
  end

  def destroy
  end

  def private
  	def set_book
  		@book = Book.find(params[:id])
  end 

  def book_params
  	params.require(:book).permit(:user_id, :name, :description)
  end
end