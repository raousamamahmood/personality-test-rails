# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  def index
    @questions = QUESTIONS
  end
end
