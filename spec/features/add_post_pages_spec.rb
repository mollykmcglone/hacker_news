require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'Add Post'
    fill_in 'Title', :with => 'This is a post'
    fill_in 'Link', :with => 'www.google.com'
    click_on 'Create Post'
    expect(page).to have_content 'This is a post'
  end
end
