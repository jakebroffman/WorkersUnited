class User < ApplicationRecord
    has_many :roles
    has_many :events, through: :roles
    has_many :rsvps
end
