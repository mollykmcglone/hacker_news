class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :link, :presence => true

  default_scope { order('votes DESC')}
end
