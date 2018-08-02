# Faker::Address.state
# Faker::Internet.email .password
# Faker::Name.first_name .last_name
# Faker::Job.title .field .position .educatin_level
require 'faker'

User.delete_all

nb_user = 2
# nb_user.times do
	User.create(email: Faker::Internet.email, password: 'azerty')
	User.create(email: Faker::Internet.email, password: 'motdpasse')
# end
