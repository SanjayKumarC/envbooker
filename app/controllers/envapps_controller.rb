class EnvappsController < ApplicationController
  before_action :set_envapp, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  # GET /envapps
  # GET /envapps.json
  def index
    @envapps = Envapp.all
  end

  # GET /envapps/1
  # GET /envapps/1.json
  def show
  end

  # GET /envapps/new
  def new
    @envapp = Envapp.new
  end

  # GET /envapps/1/edit
  def edit
  end

  # POST /envapps
  # POST /envapps.json
  def create
    @envapp = Envapp.new(envapp_params)

    respond_to do |format|
      if @envapp.save
        format.html { redirect_to @envapp, notice: 'Envapp was successfully created.' }
        format.json { render :show, status: :created, location: @envapp }
      else
        format.html { render :new }
        format.json { render json: @envapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envapps/1
  # PATCH/PUT /envapps/1.json
  def update
    respond_to do |format|
      if @envapp.update(envapp_params)
        format.html { redirect_to @envapp, notice: 'Envapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @envapp }
      else
        format.html { render :edit }
        format.json { render json: @envapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envapps/1
  # DELETE /envapps/1.json
  def destroy
    @envapp.destroy
    respond_to do |format|
      format.html { redirect_to envapps_url, notice: 'Envapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envapp
      @envapp = Envapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envapp_params
      params.require(:envapp).permit(:env_id, :app_id)
    end
end
