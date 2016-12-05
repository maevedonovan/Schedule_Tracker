class Student < ApplicationRecord

  validates :f_name, :l_name, :grad_yr, presence: true
  validates :grad_yr, numericality: true
end
