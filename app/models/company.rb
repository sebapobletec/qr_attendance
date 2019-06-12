class Company < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_presence_of :rut
  validates_presence_of :address 
end
