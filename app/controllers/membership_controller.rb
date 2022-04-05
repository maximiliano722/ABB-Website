class MembershipController < ApplicationController
  def index
    @user = User.first
    @request = HourRequest.new
    @requests = HourRequest.find_by_sql("SELECT * FROM hour_requests WHERE user_id=1")

  end

  def events
    @user = User.first
    @events = MemberEvent.all
    @attendance_logs = AttendanceLog.find_by_sql("SELECT * FROM attendance_logs WHERE user_id=1")
  end

  def points
    @users = User.all
    @category = params['category']
  end

  def edit
    @id = params['id']
    @user = User.find(@id)
  end

  def sign_in
    user_pwd = params[:password][:password]
    event_id = params[:event_id][:id]
    user_id = params[:user_id][:id]
    event = MemberEvent.find(event_id)
    category = event.event_type

    if event.password == user_pwd
      attendance_log = AttendanceLog.new
      attendance_log.event_id = event_id
      attendance_log.user_id = user_id
      attendance_log.save

      user = User.find(user_id)
    
      if category == "Service"
        user.service_points += event.point_value
        user.save
      elsif category == "Brother"
        user.brother_points += event.point_value
        user.save
      elsif category == "Social"
        user.social_points += event.point_value
        user.save
      elsif category == "Study"
        user.study_hours += event.point_value
        user.save
      end

      respond_to do |format|
        format.html { redirect_to action: :events, notice: "Successfully Signed In" }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to action: :events, notice: "Incorrect Password" }
        format.json { head :no_content }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def point_params
      params.require(:user).permit(:service_points,:brother_points,:social_points, :study_hours)
    end
end
