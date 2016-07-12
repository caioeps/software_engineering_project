class Report < ActiveRecord::Base
  belongs_to :occurrence
  belongs_to :comment
end
