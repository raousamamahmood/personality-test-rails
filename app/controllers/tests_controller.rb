# frozen_string_literal: true

# TestsController
class TestsController < ApplicationController
  def home; end

  def start
    @@answers.clear
    redirect_to question_path(Question.first)
  end

  def submit
    @@answers[params[:question_id]] = params[:selected_option]
    new_question
    if @next_question
      redirect_to question_path(@next_question)
    else
      redirect_to :result
    end
  end

  def result
    if @@answers.length.zero?
      start
    else
      @result = @@answers.values.max_by { |value| @@answers.values.count(value) }
    end
  end

  private

  def new_question
    @next_question = Question.where.not(id: @@answers.keys).first
  end
end
