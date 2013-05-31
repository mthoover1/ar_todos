class Tag < ActiveRecord::Base
  has_many :tag_clouds
  has_many :tasks, :through => :tag_clouds
end
