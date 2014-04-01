# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    nick_name "MyString"
    first_name "MyString"
    last_name "MyString"
    phone_number "MyString"
    birthday "2014-04-01 13:32:05"
    email "MyString"
    user_id 1
  end
end
