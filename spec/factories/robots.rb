FactoryBot.define do
  factory :robot do
    name 'Bob'
    serial { SecureRandom.hex }
    friendly true

    inventor 
  end
end

#creates and saves an instance 
# FactoryBot.create(:robot)
#FactoryBot.create(:robot, friendly: false)
#FactoryBot.create(:robot, friendly: false, name: 'Steve')

# create an instance but not saves
#FactoryBot.build(:robot)

# hash of everything a robot has 
#FactoryBot.attributes_for(:robot)

# creates a default factory
# FactoryBot.build_stubbed(:robot)

# FactoryBot.create(:robot) do |robot|
#   robot.parts(attributes_for(:parts))
# end 

#  Lazy Attributes
#   name { Robot.generate_name }

# Dependent attributes
# email {"#{first_name}@email.com"}

# sequencing 
# sequence :email do |n|
#   "inventor#{n}@email.com"
# end 

# Multiple robots

# builds in memory
# build_list(:robot, 100)
# saves the list 
# create_list(:robot, 100)

# callbacks
# before(:build)
# after(:build)
# before(:create)
# before(:stub)