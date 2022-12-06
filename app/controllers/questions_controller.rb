# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question_no = @@answers.length + 1
    @question = Question.find(params[:id])
  end
end
