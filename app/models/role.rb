class Role < ActiveRecord::Base

  # Trung - Define model associations
  has_many :users_roles, foreign_key: :role_id

end
