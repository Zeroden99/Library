class CommentsController < ApplicationController
 before_action :authenticate_user!
before_action :set_book

  def new
    @comment = BookComment.new
  end
  
  def create
    params[:book_comment][:user_id] = current_user.id
    params[:book_comment][:book_id] = @book.id
    @comment = BookComment.new(comment_params)
    if @comment.save
      redirect_to book_path(@book.id)
    else
      render 'new'
    end
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  	 if @comment.update(comment_params)
     
      redirect_to comment_path(@comment.id)
    else render 'edit'
  end
  
  def destroy
  	@comment.destroy
    redirect_to book_path
  end
  
private
  def set_book
    @book = Book.find_by(id: params[:book_id])
  end
  
  def comment_params
    params.require(:book_comment).permit(:user_id, :book_id, :body)
  end
end
