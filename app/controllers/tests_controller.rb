# frozen_string_literal: true

# TestsController
class TestsController < ApplicationController
  def home; end

  def start
    redirect_to :questions
  end

  def result
    answers = test_params
    @result = answers.values.max_by { |value| answers.values.count(value) }
  end

  private

  def test_params
    params.require(:answers).permit!
  end
end
