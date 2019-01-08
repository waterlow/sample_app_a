class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  private

  def not_authenticated
    flash[:danger] = "Please log in."
    redirect_to login_path
  end
end
