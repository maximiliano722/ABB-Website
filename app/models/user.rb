class User < ApplicationRecord
    validates :name, presence: true
    validates :DOB, presence: true
    validates :year, presence: true
    validates :major, presence: true
   
    validates :email, presence: true
    #validates :position, presence :true
    validates :active_points, presence: true
    validates :gpa, presence: true
    validates :total_hours, presence: true
    #validates :is_officer, presence :true
    #validates :is_admin, presence :true
   

end
