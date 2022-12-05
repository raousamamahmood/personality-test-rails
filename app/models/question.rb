# frozen_string_literal: true

# QuestionsModel
class Question < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :options, dependent: :destroy
end
