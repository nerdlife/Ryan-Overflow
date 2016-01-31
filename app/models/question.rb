class Question < ActiveRecord::Base
    belongs_to :user
    has_many :answers, dependent: :destroy
    
    acts_as_votable

    validates :title, presence: true, uniqueness: true,
    length: { in: 8..125,
        too_short: "must be ATLEAST 8 characters ",
        too_long: "must be between 8 - 125 characters "
    }

    validates :content, presence: true,
    length: { in: 15..1250,
        too_short: "must be ATLEAST 15 characters",
        too_long: " must be between 15 - 1250 characters"
    }

    def self.search(query)
        where("title || content || tags  ilike ?", "%#{query}%")
    end

    def question_votes_total
        get_upvotes.count - get_downvotes.count
    end

end
