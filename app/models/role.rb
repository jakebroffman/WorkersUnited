class Role < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :rsvps
end
