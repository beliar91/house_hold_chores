class Person < ActiveRecord::Base

  belongs_to :house_hold

  def to_s
    "#{name} #{surname}"
  end

end
