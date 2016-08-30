class Status < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles

end
