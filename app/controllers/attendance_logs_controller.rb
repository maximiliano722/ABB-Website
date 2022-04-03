class AttendanceLogsController < ApplicationController
  before_action :set_attendance_log, only: %i[ show edit update destroy ]

  # GET /attendance_logs or /attendance_logs.json
  def index
    @attendance_logs = AttendanceLog.all
  end

  # GET /attendance_logs/1 or /attendance_logs/1.json
  def show
  end

  # GET /attendance_logs/new
  def new
    @attendance_log = AttendanceLog.new
  end

  # GET /attendance_logs/1/edit
  def edit
  end

  # POST /attendance_logs or /attendance_logs.json
  def create
    @attendance_log = AttendanceLog.new(attendance_log_params)

    respond_to do |format|
      if @attendance_log.save
        format.html { redirect_to attendance_log_url(@attendance_log), notice: "Attendance log was successfully created." }
        format.json { render :show, status: :created, location: @attendance_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendance_logs/1 or /attendance_logs/1.json
  def update
    respond_to do |format|
      if @attendance_log.update(attendance_log_params)
        format.html { redirect_to attendance_log_url(@attendance_log), notice: "Attendance log was successfully updated." }
        format.json { render :show, status: :ok, location: @attendance_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendance_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_logs/1 or /attendance_logs/1.json
  def destroy
    @attendance_log.destroy

    respond_to do |format|
      format.html { redirect_to attendance_logs_url, notice: "Attendance log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_log
      @attendance_log = AttendanceLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendance_log_params
      params.require(:attendance_log).permit(:event_id, :user_id)
    end
end
