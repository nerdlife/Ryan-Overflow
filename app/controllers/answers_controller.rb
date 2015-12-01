class AnswersController < ApplicationController
	before_action :current_user

	def index
		@answers = Answer.all
	end

	def new
		@answer = Answer.new
		@question = Question.find(params[:id])
	end

	def create
		@answer = Answer.new(answer_params)
		@answer.user_id = @current_user.id
		if @answer.save
			flash[:success] = "Answer added"
			redirect_to @answer.question
		else
			flash[:error] = @answer.errors.empty? ? "Error" : @answer.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def show
		@answer = Answer.find(params[:id])
	end

	def edit 
		@answer  = Answer.find(params[:id])
	end

	def update

	if @answer = Answer.find(params[:id])
		if @answer.update(answer_params)
			redirect_to @answer
		else
			flash[:error] = @answer.errors.empty? ? "Error" : @answer.errors.full_messages.to_sentence
			render 'edit'
		end
	else 
		new
	end
	
	end

	def destroy
		@answer = Answer.find(params[:id])
		@answer.destroy
		redirect_to root_path
	end


	private

	def answer_params
		params.require(:answer).permit(:content, :question_id)
	end

end
