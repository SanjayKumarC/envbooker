class DashboardController < ApplicationController

  skip_before_action :authenticate_user!
  
  def index
    set_downtimes
  end

  private
    def set_downtimes
      @downtimes = Downtime.all.sort { |x,y| Env.find(x.env_id).name <=> Env.find(y.env_id).name }
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
          @availability[env.id] = calc
        else
          @availability[env.id] = 100.0
        end
      end
    end
end
