class AppsController < ApplicationController
  before_action :check_admin
  respond_to :html, :js

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end


  # GET /apps
  # GET /apps.json
  def index
    session["init"] = true
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
    @app = App.find(params[:id])
  end

  # GET /apps/new
  def new
    @app = App.new
    @app.color = "#000000"
  end

  # GET /apps/1/edit
  def edit
    @app = App.find(params[:id])
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)
    @app.save
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    logger.debug "#{params}"
    
    @app = App.find(params[:id])
    @app.update_attributes(app_params)
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def delete
    @app = App.find(params[:app_id])
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :description, :color)
    end
end
