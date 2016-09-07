require 'rails_helper'

describe "the delete a comment process" do
  it "deletes a comment" do
    post = Post.create({:title => "This is a post", :link => "www.google.com", :votes => 0})
    visit posts_path
    click_on 'Comments'
    click_link 'Add a comment'
    fill_in 'Author', :with => 'Oprah Winfrey'
    fill_in 'Content', :with => 'A new car for you! And you! And you!'
    click_on 'Create Comment'
    click_on 'Delete comment'
    expect(page).to_not have_content 'A new car for you! And you! And you!'
  end
end
