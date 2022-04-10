class MembershipController < ApplicationController
  def index
    @user = current_user
    @request = HourRequest.new


    hr_sql_query = "SELECT * FROM hour_requests WHERE user_id=" + @user.id.to_s
    @requests = HourRequest.find_by_sql(hr_sql_query)

    al_sql_query = "SELECT * FROM attendance_logs WHERE user_id=" + @user.id.to_s
    @attendance_logs = AttendanceLog.find_by_sql(al_sql_query)

  end

  def events
    @user = current_user
    sql_query = "SELECT * FROM member_events WHERE id NOT IN (SELECT event_id FROM attendance_logs WHERE user_id = " + @user.id.to_s + ")"
    @events = MemberEvent.find_by_sql(sql_query)

    al_sql_query = "SELECT * FROM attendance_logs WHERE user_id=" + @user.id.to_s
    @attendance_logs = AttendanceLog.find_by_sql(al_sql_query)
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
        format.html { redirect_to controller: :page, action: :event_view, notice: "Successfully Signed In" }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to controller: :page, action: :event_view, notice: "Incorrect Password" }
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
