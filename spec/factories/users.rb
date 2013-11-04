FactoryGirl.define do

  factory :user do
    first_name "Emma"
    last_name "Tong"
    email { generate :email }
  end

end