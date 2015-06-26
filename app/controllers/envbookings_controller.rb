class EnvbookingsController < ApplicationController
  before_action :check_admin
  before_action :set_envbooking, only: [:show, :edit, :update, :destroy]


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
  end

  # GET /envbookings/new
  def new
    @envbooking = Envbooking.new
    helper_config_maps
  end

  # GET /envbookings/1/edit
  def edit
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
    if @envbooking.user_id == nil
      @envbooking.user_id = current_user.id
    end

    @envbooking.save
    get_sorted_bookings

  end

  def update
    @envbooking.update_attributes(envbooking_params)
    get_sorted_bookings
  end

  def delete
    @envbooking = Envbooking.find(params[:envbooking_id])
  end

  def destroy
    @envbooking.destroy
    get_sorted_bookings
  end

  private
    def helper_config_maps
      @env_map = Env.all.map{|e|[e.name, e.id]}
      @user_map = User.all.map{|u|[u.email, u.id]}
      @proj_map = Project.all.map{|p|[p.name, p.id]}
      @app_map = App.all.map{|a|[a.name, a.id]}

      @env_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
      @user_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
      @proj_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
      @app_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    end

    def set_envbooking
      @envbooking = Envbooking.find(params[:id])
    end

    def get_sorted_bookings
      @envbookings = Envbooking.all.sort {|x,y| x.start_date <=> y.start_date}
    end

    def envbooking_params
      params.require(:envbooking).permit(:env_id, :project_id, :start_date, :end_date, :app_id, :user_id)
    end
end
