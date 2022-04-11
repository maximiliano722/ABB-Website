# frozen_string_literal: true

class PageController < ApplicationController
  def page; end

  def index
    msg = params[:notice]
    unless msg.nil?
      flash.now[:notice] = msg
    end
  end

  def about; end

  def contact; end

  def recruitment; end

  def login
    # authenticate_admin!
  end

  def create_account; end

  def event_view
    @event = MemberEvent.new
    @events = MemberEvent.all
    @user = current_user
  end
end
