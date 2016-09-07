require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    post = Post.create({:title => "Post 1", :link => "www.google.com", :votes => 1})
    post = Post.create({:title => "Post 2", :link => "www.google.com", :votes => 2})
    visit posts_path

    expect(page).to have_content 'Posts    Post 2'
  end
end
