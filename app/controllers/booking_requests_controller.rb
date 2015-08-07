class BookingRequestsController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    set_booking_requests
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
    @booking_request.status = 'Complete'
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
    @booking_request.save
    check_project
    set_booking_requests
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
      @booking_requests = BookingRequest.where.not(status: 'Complete')
    end

    def set_statuses
      @statuses = ['New', 'In Progress', 'Complete']
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
      params.require(:booking_request).permit(:notes, :status, :project)
    end
end
