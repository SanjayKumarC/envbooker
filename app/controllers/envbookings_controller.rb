class EnvbookingsController < ApplicationController
  before_action :set_envbooking, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  # GET /envbookings
  # GET /envbookings.json
  def index
    @envbookings = Envbooking.all
  end

  # GET /envbookings/1
  # GET /envbookings/1.json
  def show
  end

  # GET /envbookings/new
  def new
    @envbooking = Envbooking.new
    
    @env_map = Env.all.map{|e|[e.name, e.id]}
    @user_map = User.all.map{|u|[u.email, u.id]}
    @proj_map = Project.all.map{|p|[p.name, p.id]}
    @app_map = App.all.map{|a|[a.name, a.id]}

    @env_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @user_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @proj_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @app_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}

  end

  # GET /envbookings/1/edit
  def edit
    @env_map = Env.all.map{|e|[e.name, e.id]}
    @user_map = User.all.map{|u|[u.email, u.id]}
    @proj_map = Project.all.map{|p|[p.name, p.id]}
    @app_map = App.all.map{|a|[a.name, a.id]}

    @env_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @user_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @proj_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
    @app_map.sort!{|x,y| x[0].downcase <=> y[0].downcase}
  end

  def validate_date
    if self[:end_date] < self[:start_date]
      errors[:end_date] << "Error message should be greater than the start date."
      return false
    else
      return true
    end
  end

  # POST /envbookings
  # POST /envbookings.json
  def create
    @envbooking = Envbooking.new(envbooking_params)
    if @envbooking.user_id == nil
      @envbooking.user_id = current_user.id
    end


    respond_to do |format|
      if @envbooking.save
        format.html { redirect_to '/', notice: 'Envbooking was successfully created.' }
        format.json { render :show, status: :created, location: @envbooking }
      else
        format.html { render :new }
        format.json { render json: @envbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envbookings/1
  # PATCH/PUT /envbookings/1.json
  def update
    respond_to do |format|
      if @envbooking.update(envbooking_params)
        format.html { redirect_to envbookings_url, notice: 'Envbooking was successfully updated.' }
        format.json { render :show, status: :ok, location: @envbooking }
      else
        format.html { render :edit }
        format.json { render json: @envbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envbookings/1
  # DELETE /envbookings/1.json
  def destroy
    @envbooking.destroy
    respond_to do |format|
      format.html { redirect_to envbookings_url, notice: 'Envbooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envbooking
      @envbooking = Envbooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envbooking_params
      params.require(:envbooking).permit(:env_id, :project_id, :start_date, :end_date, :app_id, :user_id)
    end
end
