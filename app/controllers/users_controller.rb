# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[edit update]
  before_action :correct_user,   only: %i[show edit update]
  before_action :admin_user,     only: :destroy

  # GET /users or /users.json
  def index
    authenticate_admin!
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new 
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @user.is_admin = false
    @user.service_points = 0
    @user.brother_points = 0
    @user.social_points = 0
    @user.study_hours = 0

    respond_to do |format|
      if @user.save
        # format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        # below two lines of code will make the users log in immediately
        reset_session
        log_in @user
        format.html { redirect_to controller: :page, action: :index, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    authenticate_admin!
    User.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :social_points, :service_points, :brother_points, :study_hours, :is_admin, :major, :year, :position)
  end


  def logged_in_user
    @user = User.find(params[:id]) 
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to login_url unless @user.is_admin
    end
  end
  # Only allow user see and edit their own page

  def correct_user

    @user = User.find(params[:id]) 
    if @user.nil?
      redirect_to(root_url) unless !current_admin.nil?
    
    elsif @user != current_user
      redirect_to(root_url) unless current_user.is_admin
    end
  end

  def admin_user
    authenticate_admin!
    #redirect_to(root_url) unless current_user.admin?
  end


end
