alex = User.create!(first_name: 'Alex', email: 'alex@gmail.com', password: '123456')
channel = Challenge.create!(name: 'Luke', position_points: '[{lat: 37.772, lng: -122.214},{lat: 21.291, lng: -157.821}];')
Swim.create!(user: alex, challenge: channel)
