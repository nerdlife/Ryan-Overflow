class VotesController < ApplicationController

	def index
	end

	def new
		@vote = Vote.new
	end

	def create
		@vote = Vote.new(vote_params)
	end



	private 
	def vote_params
		params.require(:vote).permit(:user_id, :question_id, :answer_id)
	end
	
end
