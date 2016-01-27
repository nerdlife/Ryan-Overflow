class Answer < ActiveRecord::Base
    belongs_to :question
    belongs_to :user

   acts_as_votable

    validates :content, presence: true, 
    length: { in: 5..1250,
        too_short: "must be ATLEAST 15 characters ",
        too_long: "must be between 15 - 2750 characters "
    }

    def self.search(query)
        where("content like ?", "%#{query}%")
    end

     def votes_total
        get_upvotes.count - get_downvotes.count
    end

end


