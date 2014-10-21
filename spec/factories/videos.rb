# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    title { Faker::App.name }
    user { User.first }
    source { "videos/test.mp4" }
    remote_thumbnail_url { "http://lorempixel.com/1280/720/" }
    description { Faker::Lorem.sentence }
  end
end
