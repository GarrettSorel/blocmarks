require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  let (:title) { RandomData.random_sentence }
  let (:url) { RandomData.random_sentence }
  
  let (:topic) { Topic.create!(title: title) }
  let (:bookmark) { topic.bookmarks.create!(url: url) }
  
  it { is_expected.to belong_to(:topic) }
  
  describe "attributes" do
    it "has a URL" do
      expect(bookmark).to have_attributes(url: url)
    end
  end    
end
