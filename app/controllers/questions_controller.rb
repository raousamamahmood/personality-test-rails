# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  @@answers = {}

  def start
    @@answers.clear
    redirect_to question_path(Question.first)
  end

  def show
    @question_no = @@answers.length + 1
    @question = Question.find(params[:id])
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
    @result = @@answers.values.max_by { |value| @@answers.values.count(value) }
  end

  private

  def new_question
    @next_question = Question.where.not(id: @@answers.keys).first
  end
end
