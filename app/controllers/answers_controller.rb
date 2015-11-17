class AnswersController < ApplicationController
  def index
  	@answers = Answer.all
  end

  def show
  	@answer = Answer.find(params[:id])
  	@question = @answer.question
  end

  def new
  	@answer = Answer.new
  end

  def create
  	@answer = Answer.create(answer_params)
  	redirect_to root_path
  end



private
  def answer_params
    params.require(:answer).permit( :content, :question_id, :user_id)
  end

end
