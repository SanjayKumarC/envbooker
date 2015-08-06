class EnvsController < ApplicationController
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    get_envs
  end

  def show
    get_env
  end

  # GET /envs/new
  def new
    @env = Env.new
  end

  # GET /envs/1/edit
  def edit
    get_env
  end

  def create
    @env = Env.new(env_params)
    @env.save
    get_envs
  end

  def update
    get_env
    @env.update_attributes(env_params)
    get_envs
  end

  def delete
    @env = Env.find(params[:env_id])
  end

  def destroy
    get_env
    @env.destroy
    get_envs
  end

  private
    def get_envs
      @envs = Env.all.sort_by{|env| env.name.downcase}
    end

    def get_env
      @env = Env.find(params[:id])
    end

    def env_params
      params.require(:env).permit(:name, :envlevel_id, :description, :notes)
    end
end
