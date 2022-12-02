# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  @@introvert = 0
  @@extrovert = 0

  def start
    redirect_to :show
  end

  def show
    @question_no = @@introvert + @@extrovert
    @question = QUESTIONS[@question_no]
  end

  def submit
    params[:selected_option] == 'extrovert' ? @@extrovert += 1 : @@introvert += 1
    if QUESTIONS.length > (@@extrovert + @@introvert)
      redirect_to :show
    else
      redirect_to :result
    end
  end

  def result
    @result = @@introvert > @@extrovert ? 'Introvert' : 'Extrovert'
    @@introvert = 0
    @@extrovert = 0
  end
end
