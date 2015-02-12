class EnvbookingsController < ApplicationController
  before_action :set_envbooking, only: [:show, :edit, :update, :destroy]

  # GET /envbookings
  # GET /envbookings.json
  def index
    
    @envbookings = Envbooking.all
    @envbookings.sort_by{|env| env[:start_date]}
    @rowheight = 41
    @divheight = (@envbookings.count+2)*@rowheight

  end

  # GET /envbookings/1
  # GET /envbookings/1.json
  def show
  end

  # GET /envbookings/new
  def new
    @envbooking = Envbooking.new
  end

  # GET /envbookings/1/edit
  def edit
  end

  # POST /envbookings
  # POST /envbookings.json
  def create
    @envbooking = Envbooking.new(envbooking_params)

    respond_to do |format|
      if @envbooking.save
        format.html { redirect_to @envbooking, notice: 'Envbooking was successfully created.' }
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
        format.html { redirect_to @envbooking, notice: 'Envbooking was successfully updated.' }
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
      params.require(:envbooking).permit(:env_id, :project_id, :start_date, :end_date)
    end
end
