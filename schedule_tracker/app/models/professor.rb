class Professor < ApplicationRecord
  has_many :courses

  def course_load
    @professor.courses.count 
  end

end
