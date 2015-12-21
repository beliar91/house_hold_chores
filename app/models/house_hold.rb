class HouseHold < ActiveRecord::Base

  has_many :people
  has_many :tasks

  validates :name, presence: true

  def to_s
    self.name
  end

end
