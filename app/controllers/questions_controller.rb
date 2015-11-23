class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.create(question_params)
		if @question.save
			flash[:success] = "Your question has been added to Ryan Overflow"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
	end

	def edit 
		@question  = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
		if @question.update(question_params)
			redirect_to @question
		else
			render 'edit'
		end
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy		
		redirect_to root_path
	end



	private
	def question_params
		params.require(:question).permit(:title, :content, :user_id)
	end

end
