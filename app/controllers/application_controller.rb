class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception


# Quick amateur-hour  methods I will have to rework tomorrow, def NOT done
	def question_votes(user_id_num)
		question_votes_array = []
		users_question_votes_total = 0
		Question.where(user_id: user_id_num).each do |question_tally|
		question_votes_array << question_tally.votes
		users_question_votes_total = question_votes_array.inject{|sum,x| sum + x } 
		end 
		# return  users_question_votes_total
		return "#{users_question_votes_total}. . . . . .  array: #{question_votes_array}"
	end

# Quick amateur-hour  methods I will have to rework tomorrow, def NOT done
	def answer_votes(user_id_num)
		answer_votes_array = []
		users_answer_votes_total = 0
		Answer.where(user_id: user_id_num).each do |answer_tally|
		answer_votes_array << answer_tally.votes
		users_answer_votes_total = answer_votes_array.inject{|sum,x| sum + x } 
		end 
		# return  users_answer_votes_total
		return "#{users_answer_votes_total}. . . . . .  array: #{answer_votes_array}"
	end

# Quick amateur-hour  methods I will have to rework tomorrow, def NOT done
	# def user_votes(user_id_num)
	# 	total = question_votes(user_id_num) + answer_votes(user_id_num)
	# 	return total
	# end

# Quick amateur-hour  methods I will have to rework tomorrow, def NOT done
	# def answer_votes(answer_id)
	# 	answer_votes_array = []
	# 	users_answer_votes_total = 0
	# 	Answer.where(user_id: answer_id).each do |answer_tally|
	# 	answer_votes_array << answer_tally.votes
	# 	users_answer_votes_total = answer_votes_array.inject{|sum,x| sum + x } 
	# 	end 
	# 	return "total: #{users_answer_votes_total}. . . . . .  array: #{answer_votes_array}"
	# end

	

	private

	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id]) 
		else 
			flash[:notice] = "Log In to Ryan Overflow"
			redirect_to(controller: 'sessions', action: 'login')
			return false
		end
	end

	

end
