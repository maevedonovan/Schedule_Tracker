class Professor < ApplicationRecord
  has_many :courses

  validates :f_name, :l_name, :desc, presence: true

  scope :by_name, -> { order(:l_name, :f_name) }
end
