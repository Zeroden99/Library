class PagesController < ApplicationController
  before_action :authenticate_user! 
  def index
  	#@books = Book.all
  end
end
