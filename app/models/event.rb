class Event < ApplicationRecord
  belongs_to :company
  has_many :attendances, :dependent => :destroy
  has_many :workers, through: :attendances
end
