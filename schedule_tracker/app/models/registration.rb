class Registration < ApplicationRecord


  validates :id_num, presence: true
  validates :id_num, numericality: true

  def registration_info
    "#{id_num} #{@Student.f_name} #{@student.l_name} #{@course.c_name}"
  end
  
  belongs_to :course
  belongs_to :students

end
