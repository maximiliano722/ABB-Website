class SponsorsController < ApplicationController
  before_action :set_sponsor, only: %i[ show edit update destroy ]

  # GET /sponsors or /sponsors.json
  def index
    @sponsors = Sponsor.all
  end

  # GET /sponsors/1 or /sponsors/1.json
  def show
  end

  # GET /sponsors/new
  def new
    @sponsor = Sponsor.new
  end

  # GET /sponsors/1/edit
  def edit
  end

  # POST /sponsors or /sponsors.json
  def create
    @sponsor = Sponsor.new(sponsor_params)

    respond_to do |format|
      if @sponsor.save
        format.html { redirect_to sponsor_url(@sponsor), notice: "Sponsor was successfully created." }
        format.json { render :show, status: :created, location: @sponsor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsors/1 or /sponsors/1.json
  def update
    respond_to do |format|
      if @sponsor.update(sponsor_params)
        format.html { redirect_to sponsor_url(@sponsor), notice: "Sponsor was successfully updated." }
        format.json { render :show, status: :ok, location: @sponsor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsors/1 or /sponsors/1.json
  def destroy
    @sponsor.destroy

    respond_to do |format|
      format.html { redirect_to sponsors_url, notice: "Sponsor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sponsor_params
      params.require(:sponsor).permit(:event_id, :sponsor_name, :sponsor_type)
    end
end
