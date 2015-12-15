class VotesController < ApplicationController

   def add_vote
      
   end
   
   def subtract_vote
      
   end
   

private 
   def vote_params
      params.require(:vote).permit(:user_id, :question_id, :answer_id)
   end

end
