# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  def index
    # byebug
    @questions = QUESTIONS
  end
end
