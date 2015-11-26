class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :user

	validates :content, presence: true, 
                      length: { :in => 5..1250,
                      too_short: "%{count} Answer must be ATLEAST 15 characters",
                      too_long: "%{count} Answer must be between 15 - 1250 characters"
                      		     }

     def self.search(query)
		where("content || tags  ilike ?", "%#{query}%")
     end

end
 
 
