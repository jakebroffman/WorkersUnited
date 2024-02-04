class Role < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :rsvps

  validates :title, presence: true
  validates :responsibilities, presence: true
  validates :paid, inclusion: { in: [true, false], message: "must be true or false" }
  validates :user, presence: true
  validates :event, presence: true
  validates :title, uniqueness: { scope: :event_id, message: "title must be unique within an event" }
  validates :user_id, uniqueness: { scope: :event_id, message: "user can have only one role per event" }
end

