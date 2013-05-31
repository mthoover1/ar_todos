require 'faker'

list = List.create(:name => 'Home')

10.times do
  Task.create(:name => Faker::Lorem.words(num = 4), :list_id => list)
end

