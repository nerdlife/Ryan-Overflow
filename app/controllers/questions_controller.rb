class QuestionsController < ApplicationController
   before_action :current_user

   def index
      @questions = Question.all
      @answers = Answer.all
      unless (params[:search]).blank?
         @questions = Question.search(params[:search]).order("votes desc")
         @answer_search_match = Answer.search(params[:search])
      else
         @questions = Question.order("votes desc")
      end
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
         flash[:error] = @question.errors.empty? ? "Error" : @question.errors.full_messages.to_sentence
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
         flash[:error] = @question.errors.empty? ? "Error" : @question.errors.full_messages.to_sentence
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
      params.require(:question).permit(:title, :content, :tags, answers_attributes: [:content, :user_id, :question_id, :votes])
   end


end
