class Animal < ActiveRecord::Base
  belongs_to :adopter, class_name: 'User'
  belongs_to :species
  belongs_to :location
end
