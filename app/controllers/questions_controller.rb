class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def show
  	@question = Question.find(params[:id])
  	@answers = @question.answers
  	@answer = Answer.new
  end

  def new
  	@question = Question.new
  end

  def create
  	@question = Question.create(question_params)
  	# @question.save
  	redirect_to root_path
  end



private
  def question_params
    params.require(:question).permit(:title, :content, :user_id)
  end

end
