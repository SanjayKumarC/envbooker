class EnvlevelsController < ApplicationController
  before_action :check_admin
  respond_to :html, :js

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end
  

  # GET /envlevels
  # GET /envlevels.json
  def index
    @envlevels = Envlevel.all.sort_by{|envlevel| envlevel.name.downcase}
  end

  # GET /envlevels/1
  # GET /envlevels/1.json
  def show
    @envlevel = Envlevel.find(params[:id])
  end

  # GET /envlevels/new
  def new
    @envlevel = Envlevel.new
  end

  # GET /envlevels/1/edit
  def edit
    @envlevel = Envlevel.find(params[:id])
  end

  # POST /envlevels
  # POST /envlevels.json
  def create
    @envlevel = Envlevel.new(envlevel_params)
    @envlevel.save
    @envlevels = Envlevel.all.sort_by{|envlevel| envlevel.name.downcase}
  end

  def update
    @envlevel = Envlevel.find(params[:id])
    @envlevel.update_attributes(envlevel_params)
    @envlevels = Envlevel.all.sort_by{|envlevel| envlevel.name.downcase}
  end
  
  def delete 
    @envlevel = Envlevel.find(params[:envlevel_id])
  end

  def destroy
    @envlevel = Envlevel.find(params[:id])
    @envlevel.destroy
    @envlevels = Envlevel.all.sort_by{|envlevel| envlevel.name.downcase}
  end

  private
    def envlevel_params
      params.require(:envlevel).permit(:name, :description)
    end
end
