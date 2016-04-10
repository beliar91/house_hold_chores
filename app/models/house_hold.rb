class HouseHold < ActiveRecord::Base

  belongs_to :user
  has_many :people


  validates :name, presence: true

  def to_s
    self.name
  end


end
