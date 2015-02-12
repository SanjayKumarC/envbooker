class EnvlevelsController < ApplicationController
  before_action :set_envlevel, only: [:show, :edit, :update, :destroy]

  # GET /envlevels
  # GET /envlevels.json
  def index
    @envlevels = Envlevel.all
  end

  # GET /envlevels/1
  # GET /envlevels/1.json
  def show
  end

  # GET /envlevels/new
  def new
    @envlevel = Envlevel.new
  end

  # GET /envlevels/1/edit
  def edit
  end

  # POST /envlevels
  # POST /envlevels.json
  def create
    @envlevel = Envlevel.new(envlevel_params)

    respond_to do |format|
      if @envlevel.save
        format.html { redirect_to @envlevel, notice: 'Envlevel was successfully created.' }
        format.json { render :show, status: :created, location: @envlevel }
      else
        format.html { render :new }
        format.json { render json: @envlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envlevels/1
  # PATCH/PUT /envlevels/1.json
  def update
    respond_to do |format|
      if @envlevel.update(envlevel_params)
        format.html { redirect_to @envlevel, notice: 'Envlevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @envlevel }
      else
        format.html { render :edit }
        format.json { render json: @envlevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envlevels/1
  # DELETE /envlevels/1.json
  def destroy
    @envlevel.destroy
    respond_to do |format|
      format.html { redirect_to envlevels_url, notice: 'Envlevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envlevel
      @envlevel = Envlevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envlevel_params
      params.require(:envlevel).permit(:name)
    end
end
