class Task < ActiveRecord::Base
  belongs_to :list
  has_many :tag_clouds
  has_many :tags, :through => :tag_clouds, :dependent => :destroy            
end
