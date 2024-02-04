class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :roles
  has_many :users, through: :roles
  has_many :rsvps
end
