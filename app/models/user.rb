class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    #validates :year, presence: true
    #validates :major, presence: true
   
    #validates :email, presence: true
    #validates :position, presence :true
    #validates :active_points, presence: true
    #validates :gpa, presence: true
    #validates :total_hours, presence: true
    #validates :is_officer, presence :true
    #validates :is_admin, presence :true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    # Returns the hash digest of the given string. This is for testing purpose
    def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
