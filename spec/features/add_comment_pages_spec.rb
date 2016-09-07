require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    post = Post.create({:title => "This is a post", :link => "www.google.com", :votes => 0})
    visit posts_path
    click_on 'Comments'
    click_link 'Add a comment'
    fill_in 'Author', :with => 'Oprah Winfrey'
    fill_in 'Content', :with => 'A new car for you! And you! And you!'
    click_on 'Create Comment'
    expect(page).to have_content 'A new car for you! And you! And you!'
  end
end
