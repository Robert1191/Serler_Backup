class UsersRole < ActiveRecord::Base

  # Trung - Define model associations
  belongs_to :user
  belongs_to :role

end
