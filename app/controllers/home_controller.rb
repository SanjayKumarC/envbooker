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
	end

  def find
  end
  
  def index2
    index
  end

end
