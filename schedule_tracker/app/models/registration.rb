class Registration < ApplicationRecord

  validates :id_num, presence: true
  validates :id_num, numericality: true

  
end
