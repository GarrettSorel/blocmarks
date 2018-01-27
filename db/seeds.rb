require 'random_data'

50.times do
  Topic.create!(
    title:  RandomData.random_sentence,
  )
end
topics = Topic.all
 
100.times do
  Bookmark.create!(
    topic: topics.sample,
    url: RandomData.random_paragraph
  )
end
 
puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarkss created"