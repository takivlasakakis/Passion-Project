class Subject < ActiveRecord::Base
  # Remember to create a migration!
  has_many :links
  has_many :users, through: :links
end
