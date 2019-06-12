class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :worker
  validates_uniqueness_of :event_id, :scope => [:worker_id]
end
