class User < ActiveRecord::Base
    has_many :questions, dependent: :destroy
    has_many :answers, dependent: :destroy
    has_secure_password

    validates :username, presence: true, 
                                      uniqueness: { message: "Username is already taken" }

# Commented out temporarily bc of  Seeds
    # validates :username, length: {minimum: 3, maximum: 12}

    validates :email, presence: true, 
    uniqueness: {
        message: "Email is already registered"
        },
        format: {
            with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
        }

    # Create User Reputation Method
    def user_reputation
        tally = []
        answers.each do |answer|
            tally.push(answer.answer_votes_total)
        end
        questions.each do |question|
            tally.push(question.question_votes_total)
        end
        tally = tally.inject(:+)
        return tally
    end

    end
