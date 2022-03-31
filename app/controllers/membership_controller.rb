class MembershipController < ApplicationController
  def index
    @user = User.first
  end

  def events
  end

  def points
    @users = User.all
    @category = params['category']
  end

  def edit
    @id = params['id']
    @user = User.find(@id)
  end

  private
    # Only allow a list of trusted parameters through.
    def point_params
      params.require(:user).permit(:service_points,:brother_points,:social_points, :study_hours)
    end
end
