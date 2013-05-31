require 'faker'

list_wedding = List.create(:name => 'Wedding')
list_work = List.create(:name => 'Work')

15.times do
  Task.create(:name => Faker::Lorem.sentence(word_count = 4), 
              :list_id => [list_wedding.id, list_work.id].sample)
end