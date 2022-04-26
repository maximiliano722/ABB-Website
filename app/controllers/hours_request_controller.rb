# frozen_string_literal: true

class HoursRequestController < ApplicationController
  def index
    @request = HoursRequest.all
  end
end
