class ApplicationController < ActionController::Base
  private

  def not_authenticated
    flash[:danger] = "Please log in."
    redirect_to login_path
  end
end
