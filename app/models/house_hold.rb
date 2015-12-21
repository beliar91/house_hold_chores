class HouseHold < ActiveRecord::Base

  has_many :people
  has_many :tasks

  def to_s
    self.name
  end

end
