# frozen_string_literal: true

# OptionModel
class Option < ApplicationRecord
  validates :title, :option_type, presence: true

  belongs_to :question

  enum option_type: { introvert: 0, extrovert: 1 }
end
