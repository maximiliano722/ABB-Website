# frozen_string_literal: true

module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  # Instead going to database and checking all over again, create an instance variable
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id]) # this means "or equal" just like += or -=
    elsif !current_admin.nil?
      #email_admin = current_admin.email
      @current_user ||= User.find_by(email: current_admin.email)
    end

  end

  

  # Returns true if the user is logged in, false otherwise.
  # Note: this is the boolean value: if current_user is valid, return true (not nill)
  def logged_in?
    !current_user.nil?
  end

  def log_out
    reset_session # to enhance security
    @current_user = nil
  end
end
