class Comment < ActiveRecord::Base
  belongs_to :occurrence
end
