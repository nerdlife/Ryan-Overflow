class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, dependent: :destroy
	has_many :votes, dependent: :destroy
	
	accepts_nested_attributes_for :answers, reject_if: proc { |attributes| attributes[:content].blank?}
	

	validates :title, presence: true, uniqueness: true,
                      length: { :in => 8..125,
                      too_short: "must be ATLEAST 8 characters",
                      too_long: "must be between 8 - 125 characters"
                    		  }

      validates :content, presence: true,
                    length: { :in => 15..1250,
                    too_short: "must be ATLEAST 15 characters",
                    too_long: " must be between 15 - 1250 characters"
                    		   }

	def self.search(query)
    		where("title || content || tags  ilike ?", "%#{query}%")
    	end
 
end
