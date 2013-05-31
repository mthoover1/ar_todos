class Tag_Clouds < ActiveRecord::Base
  belongs_to :tags
  belongs_to :tasks
end
