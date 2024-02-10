
user1 = User.create(username: 'union_member1', password: 'securepass1', name: 'John Organizer', city: 'Chicago', state: 'IL', email: 'john@example.com', profile_photo_url: 'https://example.com/john.jpg')
user2 = User.create(username: 'union_member2', password: 'securepass2', name: 'Alice Worker', city: 'San Francisco', state: 'CA', email: 'alice@example.com', profile_photo_url: 'https://example.com/alice.jpg')
user3 = User.create(username: 'union_member3', password: 'securepass3', name: 'Emma Laborer', city: 'New York', state: 'NY', email: 'emma@example.com', profile_photo_url: 'https://example.com/emma.jpg')
user4 = User.create(username: 'union_member4', password: 'securepass4', name: 'Charlie Organizer', city: 'Los Angeles', state: 'CA', email: 'charlie@example.com', profile_photo_url: 'https://example.com/charlie.jpg')
user5 = User.create(username: 'union_member5', password: 'securepass5', name: 'Sophie Worker', city: 'Seattle', state: 'WA', email: 'sophie@example.com', profile_photo_url: 'https://example.com/sophie.jpg')

event1 = Event.create(
  name: 'Union Meeting',
  date: Date.tomorrow,
  location: 'Union Hall Chicago',
  start_time: Time.now + 2.hours,
  duration: 2,
  description: 'Monthly meeting to discuss union matters.',
  organizer: user1,
  attendee: user2
)

event2 = Event.create(
  name: 'Labor Rights Workshop',
  date: Date.tomorrow + 1,
  location: 'Community Center San Francisco',
  start_time: Time.now + 3.hours,
  duration: 2,
  description: 'Educational workshop on labor rights and workplace regulations.',
  organizer: user2,
  attendee: user1
)

event3 = Event.create(
  name: 'Labor Rally',
  date: Date.tomorrow + 2,
  location: 'City Park Chicago',
  start_time: Time.now + 1.day + 1.hour,
  duration: 3,
  description: 'Community rally to raise awareness for labor rights.',
  organizer: user1,
  attendee: user2
)

event4 = Event.create(
  name: 'Worker Solidarity Event',
  date: Date.tomorrow + 3,
  location: 'Solidarity Center San Francisco',
  start_time: Time.now + 1.day + 2.hours,
  duration: 4,
  description: 'Event to foster solidarity among workers from different industries.',
  organizer: user2,
  attendee: user1
)

event5 = Event.create(
  name: 'Labor Panel Discussion',
  date: Date.tomorrow + 4,
  location: 'Union Hall Chicago',
  start_time: Time.now + 1.day + 3.hours,
  duration: 2,
  description: 'Panel discussion on current labor challenges and solutions.',
  organizer: user1,
  attendee: user2
)

role1 = Role.create(title: 'Meeting Coordinator', responsibilities: 'Coordinate and lead the union meeting.', paid: false, user: user1, event: event1)
role2 = Role.create(title: 'Workshop Facilitator', responsibilities: 'Facilitate discussions and activities during the workshop.', paid: true, user: user2, event: event2)
role3 = Role.create(title: 'Rally Coordinator', responsibilities: 'Coordinate logistics for the labor rally.', paid: false, user: user1, event: event3)
role4 = Role.create(title: 'Event Organizer', responsibilities: 'Organize and manage the worker solidarity event.', paid: true, user: user2, event: event4)
role5 = Role.create(title: 'Panel Moderator', responsibilities: 'Moderate the panel discussion on labor challenges.', paid: false, user: user1, event: event5)

rsvp1 = Rsvp.create(user: user2, event: event1, role: role1, comment: 'Excited to help organize the meeting!')
rsvp2 = Rsvp.create(user: user1, event: event2, role: role2, comment: 'Looking forward to facilitating the workshop.')
rsvp3 = Rsvp.create(user: user2, event: event3, role: role3, comment: 'Ready to support the rally!')
rsvp4 = Rsvp.create(user: user1, event: event4, role: role4, comment: 'Excited to be part of organizing the event.')
rsvp5 = Rsvp.create(user: user2, event: event5, role: role5, comment: 'Looking forward to moderating the panel.')




