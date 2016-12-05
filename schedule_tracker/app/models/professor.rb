class Professor < ApplicationRecord
  has_many :courses


  def course_load
    @professor.courses.count
  end

  validates :f_name, :l_name, :desc, presence: true


end
