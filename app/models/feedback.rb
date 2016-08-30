class Feedback < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :user, foreign_key: :user_id

end
