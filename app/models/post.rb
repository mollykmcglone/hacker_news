class Post < ActiveRecord::Base
  has_many :comments

  validates :title, :presence => true
  validates :link, :presence => true

  default_scope { order('votes DESC') }
end
