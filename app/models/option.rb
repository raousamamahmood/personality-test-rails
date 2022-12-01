# frozen_string_literal: true

# OptionModel
class Option < ApplicationRecord
  belongs_to :question

  enum option_type: { introvert: 0, extrovert: 1 }
end
