class Company < ApplicationRecord
  belongs_to :user
  has_many :workers, :dependent => :destroy
  has_many :events, :dependent => :destroy
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_presence_of :rut
  validates_presence_of :address
end
