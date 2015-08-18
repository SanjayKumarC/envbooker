class SystemsController < ApplicationController

  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    set_systems
  end

  def show
    set_system
  end

  def edit
    set_system
    set_select_vars
    @system.system_properties.build

  end

  def new
    @system = System.new
    set_select_vars
    @system.system_properties.build
  end

  def create
    @system = System.new(system_params)
    @system.save
    set_systems
  end

  def update
    set_system
    @system.update_attributes(system_params)
    set_systems
  end

  def delete
    @system = System.find(params[:system_id])
  end

  def destroy
    set_system
    @system.destroy
    set_systems
  end

  private
    def system_params
      params.require(:system).permit(:env_id, :app_id, :refresh_date, :refreshed_daily, system_properties_attributes: [:id, :key, :value, :_destroy])
    end

    def set_select_vars
      @apps = App.all.sort_by { |x| [x.name] }
      @envs = Env.all.sort_by { |x| [x.name] }
    end

    def set_system
      @system = System.find(params[:id])
    end

    def set_systems
      @systems = System.all.sort_by { |x| [x.env.name, x.app.name] }
    end
end
