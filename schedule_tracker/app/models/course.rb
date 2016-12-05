class Course < ApplicationRecord


  validates :c_name, :desc, :max_enroll, presence: true
  validates :max_enroll, numericality: true

  def current_enrollment
    count
  end

  has_many :students, through: Registration
  belongs_to :professor

end
