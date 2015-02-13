class IndexController < ApplicationController
  def index
	  @envbookings = Envbooking.all
	  @envbookings.sort_by{|env| env[:start_date]}
	  @rowheight = 41
	  @divheight = (@envbookings.count+2)*@rowheight
	end
end
