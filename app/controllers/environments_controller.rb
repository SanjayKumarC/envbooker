class EnvironmentsController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @envs = Env.all.sort_by {|x| x.name.downcase}
  end

end
