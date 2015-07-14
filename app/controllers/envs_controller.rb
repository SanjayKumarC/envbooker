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
    @envproperties = Envproperty.where(env_id:@env.id).sort{|x,y| x.key <=> y.key}
  end

  # GET /envs/new
  def new
    @env = Env.new
  end

  # GET /envs/1/edit
  def edit
    @env = Env.find(params[:id])
    @ep = Envproperty.where(env_id:@env.id)

    @envproperties = ""
    @ep.each do |p|
      @envproperties += "#{p.key}|#{p.value}\n"
    end
  end

  def create
    @env = Env.new(env_params)
    @env.save
    get_sorted_apps
  end

  def update
    @env = Env.find(params[:id])
    @env.update_attributes(env_params)

    my_params = params[:env]
    envproperties = my_params[:envproperties]
    rows = envproperties.split(/\r?\n/)

    new_keys = []
    rows.each do |row|
      key, value = row.split(/\|/)
      new_keys.push(key)
    end

    old_keys = Envproperty.where(env_id: @env.id).pluck(:key)
    missing_keys = old_keys - new_keys

    if(missing_keys)
      missing_keys.each do |d|
        Envproperty.where(env_id:@env.id, key: d).delete_all
      end
    end

    rows.each do |row|
      key, value = row.split(/\|/)
      begin
        ep = Envproperty.find_by env_id:@env.id, key:key
        ep.value = value
        ep.save
      rescue
        ep = Envproperty.new
        ep.env_id = @env.id
        ep.key = key
        ep.value = value
        ep.save
      end
    end

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
      params.require(:env).permit(:name, :envlevel_id, :description, :last_refresh_date)
    end
end
