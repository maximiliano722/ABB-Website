# frozen_string_literal: true

class SupportLogsController < ApplicationController
  before_action :set_support_log, only: %i[show edit update destroy]

  # GET /support_logs or /support_logs.json
  def index
    @support_logs = SupportLog.all
  end

  # GET /support_logs/1 or /support_logs/1.json
  def show; end

  # GET /support_logs/new
  def new
    @support_log = SupportLog.new
  end

  # GET /support_logs/1/edit
  def edit; end

  # POST /support_logs or /support_logs.json
  def create
    @support_log = SupportLog.new(support_log_params)

    respond_to do |format|
      if @support_log.save
        format.html { redirect_to support_log_url(@support_log), notice: 'Support log was successfully created.' }
        format.json { render :show, status: :created, location: @support_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @support_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_logs/1 or /support_logs/1.json
  def update
    respond_to do |format|
      if @support_log.update(support_log_params)
        format.html { redirect_to support_log_url(@support_log), notice: 'Support log was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @support_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_logs/1 or /support_logs/1.json
  def destroy
    @support_log.destroy

    respond_to do |format|
      format.html { redirect_to support_logs_url, notice: 'Support log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_support_log
    @support_log = SupportLog.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def support_log_params
    params.require(:support_log).permit(:event_id, :sponsor_id)
  end
end
