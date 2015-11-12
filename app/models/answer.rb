class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :user

	validates :content, presence: true, 
                      length: { :in => 15..1250,
                      too_short: "%{count} Answer must be ATLEAST 15 characters",
                      too_long: "%{count} Answer must be between 15 - 1250 characters"
                      		     }

end
