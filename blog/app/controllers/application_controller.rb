class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActionController::ParameterMissing, with: :render_404
  rescue_from ActionController::UnpermittedParameters, with: :render_404

  def render_404(exception = nil)
      render template: "errors/error_404", status: 404, layout: "application"
  end
end
