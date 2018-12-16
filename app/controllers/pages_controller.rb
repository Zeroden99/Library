class PagesController < ApplicationController
  def index
  	@book = Book.all
  end
end
