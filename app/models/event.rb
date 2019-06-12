class Event < ApplicationRecord
  belongs_to :company
  has_many :attendances
  has_many :workers, through: :attendances
end
