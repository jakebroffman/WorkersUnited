class User < ApplicationRecord
    has_secure_password
    has_many :roles
    has_many :events, through: :roles
    has_many :rsvps

    validates :username, presence: true, uniqueness: { case_sensitive: false, scope: :id, message: "Username is already taken" }, on: :create
    validates :email, presence: true, uniqueness: { case_sensitive: false, scope: :id, message: "Email is already taken" }, format: { with: URI::MailTo::EMAIL_REGEXP }, on: :create

    validates :password, presence: true, length: { minimum: 6 }, on: :create
    validates :city, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "can only contain letters and spaces" }
    validates :state, presence: true, length: { is: 2 }, format: { with: /\A[A-Z]+\z/, message: "must be two uppercase letters" }
    validates :profile_photo_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: 'is not a valid URL' }, allow_blank: true
end
