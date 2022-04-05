# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      reset_session # make sure session was reset to avoid submit twice
      log_in user # refer sessions_helper.rb (meaning passing parameter user into log_in function
      redirect_to root_url # redirect the static page into home page, it should have some layouts of profile use
    else
      # Create an error message.
      flash.now[:danger] = '' # flash now is to make sure the flash go off when access to another page
      render 'new' # re-render
    end
  end

  def destroy
    log_out # refer to sessions_helper.rb
    redirect_to root_url # go to home page when log out
  end
end
