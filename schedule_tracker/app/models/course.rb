class Course < ApplicationRecord
  has_many :students, through: Registration
  belongs_to :professor

  def current_enroll
    
end
