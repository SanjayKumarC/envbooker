class EnvbookingsController < ApplicationController
  before_action :check_admin

  #AJAX Methods
  def update_booking
    respond_to do |format|
      format.js { render nothing: true }
    end

    data = JSON.parse(params[:envbooking])
    a = Envbooking.find_by_id(data['id'])

    unless a.update( :env_id => data['group'], :start_date => data['start'], :end_date => data['end'])
      flash.now[:alert] = "Cannot update Booking"
    else
      flash.now[:success] = "Booking updated"
    end
  end

  def delete_booking
    respond_to do |format|
      format.js { render nothing: true }
    end

    data = JSON.parse(params[:envbooking])
    a = Envbooking.find_by_id(data['id'])

    unless a.delete
      flash.now[:alert] = "Cannot remove booking"
    else
      flash.now[:success] = "Booking deleted"
    end
  end
  ##

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    get_sorted_bookings
  end

  def show
    set_envbooking
  end

  # GET /envbookings/new
  def new
    @envbooking = Envbooking.new
    helper_config_maps
  end

  # GET /envbookings/1/edit
  def edit
    set_envbooking
    helper_config_maps
  end

  def validate_date
    if self[:end_date] < self[:start_date]
      errors[:end_date] << "Error message should be greater than the start date."
      return false
    else
      return true
    end
  end

  def create
    @envbooking = Envbooking.new(envbooking_params)
    @envbooking.save
    get_sorted_bookings
  end

  def update
    set_envbooking
    @envbooking.update_attributes(envbooking_params)
    get_sorted_bookings
  end

  def update_apps
    @apps = Env.find(params[:env_id]).apps
    respond_to do |format|
      format.js
    end
  end

  def delete
    @envbooking = Envbooking.find(params[:envbooking_id])
  end

  def destroy
    set_envbooking
    @envbooking.destroy
    get_sorted_bookings
  end

  private
    def helper_config_maps
      @users = User.all.sort_by {|x| [x.name.downcase]}
      @projects = Project.all.sort_by {|x| [x.name.downcase]}

      @envs = Env.find(System.pluck(:env_id)).sort_by {|x| [x.name.downcase]}
      @apps = Env.find(@envs.first.id).apps.sort_by {|x| x.name.downcase}
    end

    def set_envbooking
      @envbooking = Envbooking.find(params[:id])
    end

    def get_sorted_bookings
      @envbookings = Envbooking.all.sort_by {|x| [x.start_date] }
    end

    def envbooking_params
      params.require(:envbooking).permit(:env_id, :project_id, :start_date, :end_date, :notes, :user_id, :app_id)
    end
end
