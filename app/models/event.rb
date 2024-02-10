class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"
  belongs_to :attending, class_name: "User"
  has_many :roles
  has_many :users, through: :roles
  has_many :attendees, through: :rsvps, source: :user

  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :start_time, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validate :date_cannot_be_in_the_past
  validate :start_time_should_be_in_future

  private

  def date_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if date.present? && date < Date.today
  end

  def start_time_should_be_in_future
    errors.add(:start_time, "should be in the future") if start_time.present? && start_time < Time.now
  end
end

