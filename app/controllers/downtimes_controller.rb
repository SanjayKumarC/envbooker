class DowntimesController < ApplicationController
  before_action :set_downtime, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!

  # GET /downtimes
  # GET /downtimes.json
  def index
    set_downtimes
  end

  # GET /downtimes/1
  # GET /downtimes/1.json
  def show
  end

  # GET /downtimes/new
  def new
    @downtime = Downtime.new
    @downtime.date = Date.today()
  end

  def edit
  end

  def create
    @downtime = Downtime.new(downtime_params)
    @downtime.save
    set_downtimes
  end

  def update
    @downtime.update(downtime_params)
    set_downtimes
  end

  def destroy
    @downtime.destroy
    set_downtimes
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_downtime
      @downtime = Downtime.find(params[:id])
    end

    def set_downtimes
      @downtimes = Downtime.all.sort_by { |x| [x.env.name] }
      @summed_downtime = Downtime.group(:env_id).sum(:hours)
      total_hours = Appconfig.find(1).total_hours * 1.0
      @availability = {}

      Env.all.each do |env|
        downtime = Downtime.lastmonth.where(env_id: env.id).sum(:hours) * 1.0

        if downtime > 0
          calc = ((total_hours-downtime)/total_hours)*100.0

          if calc < 0.0
            calc = 0.0
          end
          @availability[env.id] = calc.round(2)
        else
          @availability[env.id] = 100.0
        end
      end
    end

    def downtime_params
      params.require(:downtime).permit(:env_id, :hours, :reason, :notes, :date)
    end
end
