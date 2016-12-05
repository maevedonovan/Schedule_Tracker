class Student < ApplicationRecord
<<<<<<< HEAD

  validates :f_name, :l_name, :grad_yr, presence: true
  validates :grad_yr, numericality: true

  def net_id
    "#{l_name}#{f_name[0..1]}"
  end
=======
  belongs_to :classes, through: :Registration
>>>>>>> b54799137fe4ad9a7ce185b83eb4d2e47288f7fc
end
