class Comment < ActiveRecord::Base
  # Associations
  belongs_to :occurrence
  belongs_to :user

end
