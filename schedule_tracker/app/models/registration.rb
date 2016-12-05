class Registration < ApplicationRecord
  belongs_to :course
  belongs_to :students
end
