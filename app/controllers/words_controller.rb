class WordsController < ApplicationController
	def index
		@word = Word.order("RANDOM()").first
	end

	def new
		@word = Word.new
	end 

	def create
		Word.create(word_params)
		redirect_to root_path
	end	

	private

	def word_params
		params.require(:word).permit(:advice, :author)
	end	
end
