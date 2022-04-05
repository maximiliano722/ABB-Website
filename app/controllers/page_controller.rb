# frozen_string_literal: true

class PageController < ApplicationController
  def page; end

  def index; end

  def about; end

  def contact; end

  def recruitment; end

  def login
    # authenticate_admin!
  end

  def create_account; end
end
