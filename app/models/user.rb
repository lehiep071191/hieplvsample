class User < ApplicationRecord
	before_save :downcase_email
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
					  format: { with: VALID_EMAIL_REGEX },uniqueness: true
	validates :diachi, presence: true
	validates :gioitinh, presence: true
	validates :sinhnhat, presence: true					  
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
	validate :check_date
	enum gioitinh: [:nam, :nu, :bede ]
	
	private
	def check_date
		 	if sinhnhat >= Date.current
		 		errors.add(:sinhnhat, 'mày đến từ tương lai à')
		 		
		 	end	
		 	
	end	


	def downcase_email
          self.email = email.downcase 
    end
    class << self
	     def digest(string)
			cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
			BCrypt::Engine.cost
		end	
	end
end

