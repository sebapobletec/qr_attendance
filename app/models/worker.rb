class Worker < ApplicationRecord
  belongs_to :company
  has_many :attendances, :dependent => :destroy
  has_many :events, through: :attendances
end
