class BookController < ApplicationController
  def index
  	@Books = Book.all
  end
end
