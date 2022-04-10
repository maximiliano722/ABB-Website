class HoursRequestController < ApplicationController

    def index 
        @request = HoursRequest.all
    end

end
