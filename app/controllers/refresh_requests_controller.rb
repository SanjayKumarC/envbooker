class RefreshRequestsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    set_refresh_requests
  end

  def hide_completed
    checkbox = params[:checkbox_value]
    (checkbox == "true") ? set_refresh_requests_not_complete : set_refresh_requests
  end

  def show
    set_refresh_request
  end

  def new
    set_statuses
    set_env_maps
    @refresh_request = RefreshRequest.new
    @refresh_request.refresh_date = Date.today()
  end

  def edit
    set_refresh_request
    set_env_maps
    set_statuses
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
    s = System.find_by env_id:@refresh_request.env_id, app_id:@refresh_request.app_id
    s.refresh_date = Date.today()

    s.save

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
    set_refresh_request
    @refresh_request.update(refresh_request_params)
    set_refresh_requests
  end

  def destroy
    set_refresh_request
    @refresh_request.destroy
    set_refresh_requests
  end

  def update_apps
    @apps = Env.find(params[:env_id]).apps
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refresh_request
      @refresh_request = RefreshRequest.find(params[:id])
    end

    def set_refresh_requests
      @refresh_requests = RefreshRequest.all.sort_by {|x| [x.env.name] }
      set_env_maps
      set_statuses
    end

    def set_refresh_requests_not_complete
      @refresh_requests = RefreshRequest.where.not(status_id: Status.find_by(status_type: 'complete_status').id).sort_by {|x| [x.env.name] }
      set_env_maps
      set_statuses
    end

    def set_env_maps
      @envs = Env.find(System.pluck(:env_id)).sort_by { |x| [x.name.downcase] }
      @apps = Env.find(@envs.first.id).apps.sort_by { |x| [x.name.downcase] }
    end

    def set_statuses
      @statuses = Status.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refresh_request_params
      params.require(:refresh_request).permit(:env_id, :app_id, :refresh_date, :notes, :status_id, :mks_id)
    end
end
