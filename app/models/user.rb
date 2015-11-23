class User < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	has_many :answers, dependent: :destroy
	has_secure_password

      validates :username, presence: true, uniqueness: true
                      
      validates :email, presence: true, uniqueness: true,
                      format: {
       			  with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
       		    }

end
