class Student < ApplicationRecord


  validates :f_name, :l_name, :grad_yr, presence: true
  validates :grad_yr, numericality: true

  def net_id
    "#{l_name}#{f_name[0..1]}"
  end

  belongs_to :classes, through: :Registration


  scope :by_alpha, -> { order(:l_name, :f_name) }
  scope :by_year, -> { order(:grad_yr)}


end
