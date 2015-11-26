class QuestionsController < ApplicationController
	before_action :current_user,
			except: [:index]

	def index
		@questions = Question.all
		@answers = Answer.all

		unless (params[:search]).blank?
			@questions = Question.search(params[:search]).order("votes desc")
			@answer_search = Answer.search(params[:search])
		else
			@questions = Question.order("votes desc")
		end
			@answer_search_match = @answer_search
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.user_id = @current_user.id
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
		@answer.question_id = @question.id
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
		params.require(:question).permit(:title, :content, :tags => [])
	end


end
