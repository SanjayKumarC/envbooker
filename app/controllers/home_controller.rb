require 'json'

class HomeController < ApplicationController
	respond_to :html, :js

	skip_before_action :authenticate_user!

  def index
		if params[:env].present?
			@env_filter = params[:env]
		else
			@env_filter = nil
		end

	  if @env_filter && @env_filter != 'All'
			@envbookings = Envbooking.where(env: Env.find_by_name(@env_filter))
			@envs = Env.where(name: @env_filter)
		else
			@envbookings = Envbooking.all
			@envs = Env.all
		end

	  @sorted_bookings = @envbookings.sort_by{|booking| Env.find_by_id(booking[:env_id]).name.downcase}
	  @rowheight = 41
	  @divheight = (@envbookings.count+2) * @rowheight

    first = Envbooking.all.sort {|x,y| x.start_date <=> y.start_date}.first
    last = Envbooking.all.sort {|x,y| x.end_date <=> y.end_date}.last

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

		# @apps = App.all
		# @apps.sort {|x,y| x.name <=> y.name}

		@envs.sort {|x,y| x.name <=> y.name}
		@all_envs = Env.all.sort {|x,y| x.name <=> y.name}
	end
end
