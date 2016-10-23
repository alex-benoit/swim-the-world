alex = User.create(first_name: 'Alex', email: 'alex@gmail.com', password: '123456')
Challenge.create(name: 'Pier to Pier', position_points: '[{lat: 51.074336, lng: 1.173230}];')
channel = Challenge.create(name: 'The British Channel', position_points: '[{lat: 51.074336, lng: 1.173230},{lat: 51.054336, lng: 1.193230},{lat: 50.901266, lng: 1.502585},{lat: 50.871266, lng: 1.582585}];')
Challenge.create(name: 'Carribean Treasure Hunt', position_points: '[{lat: 51.488153, lng: -0.230311}];')
Challenge.create(name: 'Breat Cancer Fundraiser', position_points: '[{lat: 51.488153, lng: -0.230311}];')
Challenge.create(name: 'Amazon Challenge', position_points: '[{lat: 51.488153, lng: -0.230311}];')
thames = Challenge.create(name: 'The Thames Challenge', position_points: '[{lat: 51.488153, lng: -0.230311},{lat: 51.48345, lng: -0.225676},{lat: 51.474683, lng: -0.224817},{lat: 51.46677, lng: -0.214346},{lat: 51.463455, lng: -0.192202},{lat: 51.468053, lng: -0.18173},{lat: 51.480563, lng: -0.173662},{lat: 51.484626, lng: -0.146025},{lat: 51.483877, lng: -0.13212},{lat: 51.492856, lng: -0.123022},{lat: 51.506855, lng: -0.120104},{lat: 51.509419, lng: -0.099676},{lat: 51.50194, lng: -0.063112},{lat: 51.501726, lng: -0.055388},{lat: 51.508778, lng: -0.043543},{lat: 51.505145, lng: -0.029982},{lat: 51.491039, lng: -0.02878},{lat: 51.486015, lng: -0.021742},{lat: 51.486122, lng: -0.005262},{lat: 51.490932, lng: -0.000456},{lat: 51.502901, lng: -0.005434},{lat: 51.506641, lng: 0.001261},{lat: 51.502581, lng: 0.012419},{lat: 51.495955, lng: 0.02392},{lat: 51.49681, lng: 0.06529},{lat: 51.500657, lng: 0.080912},{lat: 51.511342, lng: 0.091383},{lat: 51.515188, lng: 0.130693},{lat: 51.507923, lng: 0.161764},{lat: 51.500444, lng: 0.176699},{lat: 51.485374, lng: 0.181333},{lat: 51.484839, lng: 0.217897},{lat: 51.45661, lng: 0.27815},{lat: 51.470513, lng: 0.307161},{lat: 51.46431, lng: 0.327932},{lat: 51.450512, lng: 0.334627},{lat: 51.448266, lng: 0.423548},{lat: 51.453615, lng: 0.440199},{lat: 51.493818, lng: 0.465776},{lat: 51.4982, lng: 0.631263}];')
Challenge.create(name: 'Tropical Islands', position_points: '[{lat: 51.074336, lng: 1.173230}];')

Swim.create!(user: alex, challenge: channel)
Swim.create!(user: alex, challenge: thames)




