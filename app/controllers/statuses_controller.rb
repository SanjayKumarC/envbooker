class StatusesController < ApplicationController
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    set_statuses
  end

  def show
    set_status
  end

  def edit
    set_status
  end

  def update
    set_status
  end

  def create
    @status = Status.new(status_params)
    @status.save
    set_statuses
  end

  def new
    @status = Status.new
  end

  private
    def set_statuses
      @statuses = Status.all.sort_by { |x| [x.name] }
    end

    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:name, :status_type)
    end
end
