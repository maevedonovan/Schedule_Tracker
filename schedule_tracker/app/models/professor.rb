class Professor < ApplicationRecord
  has_many :courses

  validates :f_name, :l_name, :desc, presence: true

end
