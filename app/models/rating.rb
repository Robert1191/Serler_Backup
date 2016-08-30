class Rating < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :user, foreign_key: :user_id
  belongs_to :article, foreign_key: :article_id

end
