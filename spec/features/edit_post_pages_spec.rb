require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    post = Post.create({:title => "This is a post", :link => "www.google.com", :votes => 0})
    visit posts_path
    click_on 'Edit'
    fill_in 'Title', :with => 'This is a really great post'
    click_on 'Update Post'
    expect(page).to have_content 'This is a really great post'
  end
end
