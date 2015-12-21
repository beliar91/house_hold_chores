class HouseHold < ActiveRecord::Base

  has_many :people
  has_many :tasks

end
