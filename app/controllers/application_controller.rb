# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::Base
  rescue_from StandardError, with: :error_handler

  protected

  def error_handler(exception)
    flash[:alert] = exception.message
    redirect_back fallback_location: :root
  end
end
