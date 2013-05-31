require 'faker'

list = List.create(:name => 'Home')

10.times do
  Task.create(:name => Faker::Lorem.sentence(word_count = 4), :list_id => list.id)
end

