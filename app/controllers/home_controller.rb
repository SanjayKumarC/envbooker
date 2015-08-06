require 'json'

class HomeController < ApplicationController
	respond_to :html, :js

	before_filter :set_appconfig
	skip_before_action :authenticate_user!

  def index
		logger.debug "#{params.inspect}"

		if params[:env].present? && params[:env] != 'All'
			env_filter = params[:env]
		else
			env_filter = nil
		end

		if params[:app].present? && params[:app] != 'All'
			app_filter = params[:app]
		else
			app_filter = nil
		end

		if params[:project].present? && params[:project] != 'All'
			project_filter = params[:project]
		else
			project_filter = nil
		end

		#Make some decision about whether we're filtering by App or by Env.
	  if env_filter
			@envbookings = Envbooking.where(env: Env.find_by_name(env_filter))
		elsif app_filter
			@envbookings = Envbooking.where(app: App.find_by_name(app_filter))
		elsif project_filter
			@envbookings = Envbooking.where(project: Project.find_by_name(project_filter))
		else
			@envbookings = Envbooking.all
		end

		@envs = Env.find(@envbookings.pluck(:env_id)).sort_by {|x| [x.name] }
		@apps = App.find(@envbookings.pluck(:app_id)).sort_by {|x| [x.name] }
		@projects = Project.find(@envbookings.pluck(:project_id)).sort_by {|x| [x.name] }

	  @sorted_bookings = @envbookings.sort_by{|booking| Env.find_by_id(booking[:env_id]).name.downcase}
	  @rowheight = 41
	  @divheight = (@envbookings.count+2) * @rowheight

    first = Envbooking.all.sort_by {|x| [x.start_date]}.first
    last = Envbooking.all.sort_by {|x| [x.end_date]}.last

    begin
      @min_date = first.start_date.to_time.iso8601.to_date
    rescue
      @min_date = Time.parse(Time.now.iso8601).strftime('%Y-01-01').to_date
    end

    begin
      @max_date = last.end_date.to_time.iso8601.to_date
    rescue
      @max_date = Time.parse(Time.now.iso8601).strftime('%Y-12-31').to_date
    end

    @min_date <<= 2
    @max_date >>= 2
	end

	def set_appconfig
		@appconfig = Appconfig.find(1)

		if current_user
			@userconfig = UserPreference.find_by user_id: current_user.id
		end

		if @userconfig
			@config_var = @userconfig
		else
			@config_var = @appconfig
		end
	end

	def saveconfig
		@appconfig = Appconfig.find(1)
		@appconfig.template = params[:appconfig][:template]
		@appconfig.sidebar = params[:appconfig][:sidebar]
		@appconfig.update_attributes(appconfig_params)
	end
	private
		def appconfig_params
			params.require(:appconfig).permit(:template, :color_by_project, :show_extra_color_box, :total_hours, :sidebar, :show_legend)
		end
end
