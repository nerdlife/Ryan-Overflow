class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers

	validates :title, presence: true, uniqueness: true,
                      length: { :in => 8..125,
                      too_short: "%{count} Question Title must be ATLEAST 8 characters",
                      too_long: "%{count} Question Title must be between 8 - 125 characters"
                    		  }

      validates :content, presence: true,
                    length: { :in => 15..1250,
                    too_short: "%{count} Question Title must be ATLEAST 15 characters",
                    too_long: "%{count} Question Title must be between 15 - 1250 characters"
                    		   }


end
