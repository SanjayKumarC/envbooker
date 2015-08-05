class RefreshesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @systems = System.all.sort_by { |x| [x.env.name, x.app.name]}
  end
end
