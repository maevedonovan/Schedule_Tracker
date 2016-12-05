class Registration < ApplicationRecord


  validates :id_num, presence: true
  validates :id_num, numericality: true


  belongs_to :course
  belongs_to :students

end
