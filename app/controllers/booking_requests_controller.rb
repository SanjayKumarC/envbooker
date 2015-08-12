class BookingRequestsController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    set_booking_requests
  end

  def hide_completed
    checkbox = params[:checkbox_value]
    (checkbox == "true") ? set_booking_requests_not_complete : set_booking_requests
  end

  def edit
    set_booking_request
    set_statuses
  end

  def show
    set_booking_request
  end

  def complete
    @booking_request = BookingRequest.find(params[:booking_request_id])
  end

  def update_request
    @booking_request = BookingRequest.find(params[:booking_request_id])
    @booking_request.status = Status.find_by(status_type:'complete_status')
    @booking_request.save
    set_booking_requests
  end


  def update
    set_booking_request
    set_statuses
    @booking_request.update_attributes(booking_request_params)
    check_project
    set_booking_requests
  end

  def new
    @booking_request = BookingRequest.new
  end

  def create
    @booking_request = BookingRequest.new(booking_request_params)
    @booking_request.status = 'New'
    if @booking_request.save
      check_project
      set_booking_requests
    else
      redirect_to root_url
    end
  end

  def delete
    @booking_request = BookingRequest.find(params[:booking_request_id])
  end

  def destroy
    set_booking_request
    @booking_request.destroy
    set_booking_requests
  end

  private
    def set_booking_request
      @booking_request = BookingRequest.find(params[:id])
    end

    def set_booking_requests
      @booking_requests = BookingRequest.all.sort
    end

    def set_booking_requests_not_complete
      @booking_requests = BookingRequest.where.not(status_id: Status.find_by(status_type: 'complete_status')).sort
    end

    def set_statuses
      @statuses = Status.all
    end

    def check_project
      if (Project.find_by name:@booking_request.project).nil?
        p = Project.new
        p.name = @booking_request.project
        p.description = "Added automatically with Booking Request"
        p.color = "#FFFFFF"
        p.save
      end
    end

    def booking_request_params
      params.require(:booking_request).permit(:notes, :status_id, :project, :user, :start_date, :end_date)
    end
end
