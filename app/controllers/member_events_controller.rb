class MemberEventsController < ApplicationController
  def index
    @events = MemberEvent.all
  end

  def show
    @event = MemberEvent.find(params[:id])
    sql_query = "SELECT * FROM attendance_logs WHERE event_id = " + @event.id.to_s
    @attendance_logs = AttendanceLog.find_by_sql(sql_query)
  end

  def new
    @event = MemberEvent.new
  end

  def create
    @event = MemberEvent.new(member_event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to member_event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @event = MemberEvent.find(params[:id])
  end

  def update
    @event = MemberEvent.find(params[:id])

    respond_to do |format|
      if @event.update(member_event_params)
        format.html { redirect_to member_event_url(@event), notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event = MemberEvent.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to member_events_url, notice: "Member event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def sign_in 
    @event = MemberEvent.find(params[:event_id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to member_events_url, notice: "Member event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def member_event_params
      params.require(:member_event).permit(:event_name, :date, :time, :location, :event_type, :point_value, :description, :password)
    end
end
