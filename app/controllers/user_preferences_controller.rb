class UserPreferencesController < ApplicationController
  def edit
    @user_preference = UserPreference.find(current_user.id)
  end

  def update
    @user_preference = UserPreference.find(params[:id])
    respond_to do |format|
      if @user_preference.update(user_preference_params)
        format.html { redirect_to '/', notice: 'User preference was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def user_preference_params
      params.require(:user_preference).permit(:user_id, :template, :color_by_project, :show_extra_color_box, :sidebar)
    end
end
