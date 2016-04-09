FactoryGirl.define do
  factory :user do |u|

  u.email "test@abc.pl"
  u.password "12345678"
  u.password_confirmation "12345678"


  end

end
