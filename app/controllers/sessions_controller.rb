class SessionsController < ApplicationController
  def new
  end

  def create
    email, password, remember_me = params[:session].values_at(:email, :password, :remember_me)
    user = User.find_by(email: email.downcase)
    if user&.valid_password?(password)
      login(email, password, remember_me == "1")
      redirect_back_or_to user
    else
      flash.now[:danger] = "Invalid email/password combination"
      render "new"
    end
  end

  def destroy
    if logged_in?
      remember_me!
      forget_me!
      logout
    end
    redirect_to root_url
  end
end
