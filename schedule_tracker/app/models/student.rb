class Student < ApplicationRecord
  belongs_to :classes, through: :Registration
end
