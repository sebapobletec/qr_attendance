class Worker < ApplicationRecord
  belongs_to :company
  has_many :attendances
  has_many :events, through: :attendances
end
