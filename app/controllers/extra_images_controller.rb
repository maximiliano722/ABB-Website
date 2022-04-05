class ExtraImagesController < ApplicationController
  before_action :set_extra_image, only: %i[ show edit update destroy ]

  # GET /extra_images or /extra_images.json
  def index
    @extra_images = ExtraImage.all
  end

  # GET /extra_images/1 or /extra_images/1.json
  def show
  end

  # GET /extra_images/new
  def new
    @extra_image = ExtraImage.new
  end

  # GET /extra_images/1/edit
  def edit
  end

  # POST /extra_images or /extra_images.json
  def create
    @extra_image = ExtraImage.new(extra_image_params)

    respond_to do |format|
      if @extra_image.save
        format.html { redirect_to extra_image_url(@extra_image), notice: "Extra image was successfully created." }
        format.json { render :show, status: :created, location: @extra_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extra_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_images/1 or /extra_images/1.json
  def update
    respond_to do |format|
      if @extra_image.update(extra_image_params)
        format.html { redirect_to extra_image_url(@extra_image), notice: "Extra image was successfully updated." }
        format.json { render :show, status: :ok, location: @extra_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extra_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_images/1 or /extra_images/1.json
  def destroy
    @extra_image.destroy

    respond_to do |format|
      format.html { redirect_to extra_images_url, notice: "Extra image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_image
      @extra_image = ExtraImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extra_image_params
      params.require(:extra_image).permit(:group, :description, :image)
    end
end
