require 'rails_helper'

describe "the delete a post path" do
  it "delets a post" do
    post = Post.create({:title => "This is a post", :link => "www.google.com", :votes => 0})
    visit posts_path
    click_on 'Delete'

    page.should have_no_content('This is a post')
  end
end
