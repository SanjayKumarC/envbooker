class RefreshesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @envs = Env.all.sort {|x,y| x.name <=> y.name }
  end
end
