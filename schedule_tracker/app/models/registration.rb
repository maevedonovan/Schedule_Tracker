class Registration < ApplicationRecord
<<<<<<< HEAD

  validates :id_num, presence: true
  validates :id_num, numericality: true


=======
  belongs_to :course
  belongs_to :students
>>>>>>> b54799137fe4ad9a7ce185b83eb4d2e47288f7fc
end
