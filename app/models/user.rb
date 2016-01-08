class User < ActiveRecord::Base
    has_many :questions, dependent: :destroy
    has_many :answers, dependent: :destroy
    has_many :votes, dependent: :destroy
    has_secure_password


    validates :username, presence: true, 
                                      uniqueness: { message: "Username is already taken" }

                                      
# Commented out bc of Faker Seeds
    # validates :username, length: {minimum: 3, maximum: 12}


    validates :email, presence: true, 
    uniqueness: {
        message: "Email is already registered"
        },
        format: {
            with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
        }

    end
