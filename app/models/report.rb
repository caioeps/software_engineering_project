class Report < ActiveRecord::Base
  belongs_to :occurrence_id
  belongs_to :comment_id
end
