# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  @@introvert = 0
  @@extrovert = 0

  def start
    redirect_to question_path(Question.first)
  end

  def show
    @question_no = @@introvert + @@extrovert + 1
    @question = Question.find(params[:id])
  end

  def submit
    # byebug
    params[:selected_option] == 'extrovert' ? @@extrovert += 1 : @@introvert += 1
    next_question = Question.where('id > ?', params[:question_id]).first
    if next_question
      redirect_to question_path(next_question)
    else
      redirect_to :result
    end
  end

  def result
    @result = @@introvert > @@extrovert ? 'Introvert' : 'Extrovert'
  end
end
