require 'random_data'

50.times do
  Topic.create!(
    title:  RandomData.random_sentence,
    user_id: users.sample
  )
end
topics = Topic.all
 
100.times do
  Bookmark.create!(
    topic: topics.sample,
    url: "http://google.com",
    title: RandomData.random_sentence,
    description: RandomData.random_paragraph,
    user_id: users.sample
  )
end
 
puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarks created"