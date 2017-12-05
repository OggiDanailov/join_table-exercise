class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
		@tags = Tag.all
		
	end



	def create
		@book = Book.new(book_params)
		if  @book.save
			redirect_to root_path
		else
			render 'new'
		end
	end

def edit
    @book = Book.find(params[:id])
    @tags = Tag.all
  end

	def update
	@book = Book.find(params[:id])
	if @book.update(book_params)
		redirect_to @book
	else
		render 'show'
	end
	end


	private
	def book_params
		params.require(:book).permit(:title, :tags_ids, tag_ids:[])
	end
end
