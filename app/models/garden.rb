class Garden < ApplicationRecord
  has_many :garden_rentings
  has_many :users, through: :garden_renting
end
