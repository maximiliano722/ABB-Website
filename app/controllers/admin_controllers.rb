# frozen_string_literal: true

class AdminsController < ApplicationController
  def destroy
    @admin = Admin.find(params[:admin_id])
    @admin.destroy!
    # Admin.destroy(params[:admin_id])
    respond_to do |format|
      format.html do
        redirect_to('/permission_users',
                    notice: "#{@admin.full_name}'s profile was successfully destroyed.")
      end
      format.json { head(:no_content) }
    end
  end
end
