class RefreshRequestsController < ApplicationController
  skip_before_action :authenticate_user!

  before_action :set_refresh_request, only: [:show, :edit, :update, :destroy]
  before_action :set_env_maps, only: [:edit, :update, :create, :new]
  before_action :set_statues, only: [:edit, :update, :create, :new]
  before_action :set_refresh_requests, only: [:index]

  def index
  end

  def show
  end

  def new
    @refresh_request = RefreshRequest.new
    @refresh_request.refresh_date = Date.today()
  end

  def edit
  end

  def delete
    @refresh_request = RefreshRequest.find(params[:refresh_request_id])
    set_refresh_requests
  end

  def complete
    @refresh_request = RefreshRequest.find(params[:refresh_request_id])
    set_refresh_requests
  end

  def update_request
    @refresh_request = RefreshRequest.find(params[:refresh_request_id])
    env = Env.find(@refresh_request.env_id)
    env.last_refresh_date = Date.today()
    env.save
    @refresh_request.status = 'Complete'
    @refresh_request.save
    set_refresh_requests
  end

  def create
    @refresh_request = RefreshRequest.new(refresh_request_params)
    @refresh_request.status = 'New'
    @refresh_request.save
    set_refresh_requests
  end

  def update
    @refresh_request.update(refresh_request_params)
  end

  def destroy
    @refresh_request.destroy
    set_refresh_requests
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refresh_request
      @refresh_request = RefreshRequest.find(params[:id])
    end

    def set_refresh_requests
      @refresh_requests = RefreshRequest.where.not(status: 'Complete').sort{|x,y| x.env.name <=> y.env.name}
    end

    def set_env_maps
      @env_map = Env.all.map{|e|[e.name, e.id]}.sort!{|x,y| x[0].downcase <=> y[0].downcase}
      @app_map = App.all.map{|a|[a.name, a.id]}.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    end

    def set_statues
      @statuses = ["New", "Complete","In Progress"]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refresh_request_params
      params.require(:refresh_request).permit(:env_id, :app_id, :refresh_date, :notes, :status)
    end
end
