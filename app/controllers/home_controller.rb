require 'json'

class HomeController < ApplicationController
	
	skip_before_action :authenticate_user!
	
  def index
	  @envbookings = Envbooking.all
	  @sorted_bookings = @envbookings.sort_by{|booking| Env.find_by_id(booking[:env_id]).name.downcase}
	  @rowheight = 41
	  @divheight = (@envbookings.count+2)*@rowheight

    @envs = []
    @sorted_bookings.each do |b|
      @envs.push(Env.find_by_id(b.env_id).name)
    end

    @envs.sort!.uniq!
    
    @counter = 0 
    @counter_rows = {}
    @env_rows = 0

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

    @min_date <<= 1
    @max_date >>= 1

	end

  def find
  end
  
  def index2
    index
  end
  
  def index3
    index
    @envs = {}
    @envs = Env.all.sort {|x,y| x.name <=> y.name}
  end

end
