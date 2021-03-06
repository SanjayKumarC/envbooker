require 'json'

class HomeController < ApplicationController
	respond_to :html, :js

	before_action :set_appconfig
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

		@envbookings.sort_by { |x| x.env.name }

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

	helper_method :compute_style

	def shader (percent, color, text_color)
		if(text_color.upcase == '#000000')
			percent *= -1
		end

	  dec = color.slice(1..color.length).to_i(16)
	  amt = (2.55*percent).round

	  r = (dec >> 16) + amt
	  g = (dec >> 8 & 0x00FF) + amt
	  b = (dec & 0X0000FF) + amt

	  hex = 0x1000000 +
	  ((r<255 ? (r<1 ? 0 : r ) : 255) * 0x10000) +
	  ((g<255 ? (g<1 ? 0 : g ) : 255) * 0x100) +
	  ((b<255 ? (b<1 ? 0 : b ) : 255))

		ret_val = "#" + hex.to_s(16).slice(1..6).to_s

		return ret_val

	end

	def compute_style(obj)

	  c = obj.color
	  tc = obj.text_color

		logger.debug "text color: #{tc.class}"

	  sec = shader(@config_var.shade_percentage, c, tc)

	  #color, color, 2nd, 2nd, color, color, 2nd, 2nd
	  str = sprintf("color: %7s; \
background: %7s; \
background: -webkit-repeating-linear-gradient(45deg, %7s, %7s 10px, %7s 10px, %7s 20px); \
background: -ms-repeating-linear-gradient(45deg, %7s, %7s 10px, %7s 10px, %7s 20px); \
background: repeating-linear-gradient(45deg, %7s, %7s 10px, %7s 10px, %7s 20px);", tc,c,c,c,sec,sec,c,c,sec,sec,c,c,sec,sec)
	  return str
	end

	private
		def appconfig_params
			params.require(:appconfig).permit(:template, :color_by_project, :show_extra_color_box, :total_hours, :sidebar, :show_legend, :shade_percentage)
		end
end
