FactoryGirl.define do
  factory :okm_core_address, class: 'OkmCore::Address' do
    user_id nil
    street "MyString"
    zip "MyString"
    city "MyString"
  end
end
