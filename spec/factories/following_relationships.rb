# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :following_relationship do
    follower nil
    followed_user nil
  end
end
