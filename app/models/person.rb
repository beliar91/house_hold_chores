class Person < ActiveRecord::Base

  belongs_to :house_hold

  validate :house_hold_must_be_chosen
  validates :name, presence: true


  def to_s
    "#{name} #{surname}"
  end

  private

  def house_hold_must_be_chosen
    errors.add(:house_hold_id, "must be chosen") if self.house_hold_id.blank?
  end



end
