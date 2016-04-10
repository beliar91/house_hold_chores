class Person < ActiveRecord::Base

  belongs_to :house_hold
  belongs_to :user, foreign_key: :user_id

  validate :house_hold_must_be_chosen
  validates :name, presence: true


  def to_s
    "#{name} #{surname}"
  end

  private

  def house_hold_must_be_chosen
    errors.add("A house hold ", "must be chosen") if self.house_hold_id.blank?
  end



end
