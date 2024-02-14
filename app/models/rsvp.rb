class Rsvp < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :role


  validates :user, presence: true
  validates :event, presence: true
  validates :role, presence: true
  validates :comment, length: { maximum: 255 } 
  validates :attending, inclusion: { in: [true, false], message: "must be true or false" }
  validates :user_id, uniqueness: { scope: :event_id, message: "already RSVP'd to this event" }
end

