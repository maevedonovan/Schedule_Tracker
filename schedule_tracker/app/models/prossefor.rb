class Prossefor < ApplicationRecord

  validates :f_name, :l_name, :desc, presence: true
end
