class Professor < ApplicationRecord
  has_many :courses


  def course_load
    @professor.courses.count
  end

  validates :f_name, :l_name, :desc, presence: true


  scope :by_name, -> { order(:l_name, :f_name) }

end
