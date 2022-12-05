# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    title { Faker::Name.unique.name }
  end

  factory :option do
    question
    title { Faker::Name.unique.name }

    trait :introvert do
      role { :introvert }
    end

    trait :extrovert do
      role { :extrovert }
    end
  end
end
