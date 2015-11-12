class User < ActiveRecord::Base
	has_many :questions
	has_many :answers

	validates :password, presence: true,
                     length: { :in => 8..16, 
                     too_short: "%{count} password must be ATLEAST 8 characters",
                     too_long: "%{count} password must be between 8 - 16 characters"
                    		   }

      validates :username, presence: true, uniqueness: true,
                      length: { :in => 4..20,
                      too_short: "%{count} Username must be ATLEAST 4 characters",
                      too_long: "%{count} Username must be between 4 - 20 characters"
                    		  }

      validates :email, presence: true, uniqueness: true,
                      length: { :in => 8..40,
                      too_short: "%{count} Email must be ATLEAST 8 characters",
                      too_long: "%{count} Email must be between 8 - 40 characters"
                    		  }

end
