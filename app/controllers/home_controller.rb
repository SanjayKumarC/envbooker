class HomeController < ApplicationController
	
	skip_before_action :authenticate_user!
	
  def index
	  @envbookings = Envbooking.all
	  @envbookings.sort_by{|env| env[:envlevel]}
	  @rowheight = 41
	  @divheight = (@envbookings.count+2)*@rowheight
    @systems = []

    @envbookings.each do |booking|
      @systems.push(booking[0])
    end

    @systems.sort!.uniq!
	end
end
