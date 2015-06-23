class EnvsController < ApplicationController
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    get_sorted_apps
  end

  def show
    @env = Env.find(params[:id])
  end

  # GET /envs/new
  def new
    @env = Env.new
  end

  # GET /envs/1/edit
  def edit
    @env = Env.find(params[:id])
  end

  def create
    @env = Env.new(env_params)
    @env.save
    get_sorted_apps
  end

  def update
    @env = Env.find(params[:id])
    @env.update_attributes(env_params)
    get_sorted_apps
  end

  def delete
    @env = Env.find(params[:env_id])
  end

  def destroy
    @env = Env.find(params[:id])
    @env.destroy
    get_sorted_apps
  end

  private
    def get_sorted_apps
      @envs = Env.all.sort_by{|env| env.name.downcase}
    end

    def env_params
      params.require(:env).permit(:name, :envlevel_id)
    end
end
