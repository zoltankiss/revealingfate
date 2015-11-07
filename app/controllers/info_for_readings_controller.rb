class InfoForReadingsController < ApplicationController
  before_action :set_info_for_reading, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token

  # GET /info_for_readings
  # GET /info_for_readings.json
  def index
    authenticate_user
    @info_for_readings = InfoForReading.all
  end

  # GET /info_for_readings/1
  # GET /info_for_readings/1.json
  def show
    authenticate_user
  end

  # GET /info_for_readings/new
  def new
    @package = params[:service]
    @info_for_reading = InfoForReading.new
  end

  # GET /info_for_readings/1/edit
  def edit
    authenticate_user
  end

  # POST /info_for_readings
  # POST /info_for_readings.json
  def create
    year = info_for_reading_params[:year].to_i
    month = info_for_reading_params[:month].to_i
    day = info_for_reading_params[:day].to_i
    hour = info_for_reading_params[:hour].to_i
    hour = info_for_reading_params[:hour].to_i
    minute = info_for_reading_params[:minute].to_i
    hash = info_for_reading_params.to_h
    hash.delete('year')
    hash.delete('month')
    hash.delete('day')
    hash.delete('hour')
    hash.delete('minute')
    birth_date = DateTime.new(
      year, month, day, hour, minute
    )
    hash.merge!(birth_date: birth_date)
    @info_for_reading = InfoForReading.create!(hash)
    render text: 'success!'
  end

  # PATCH/PUT /info_for_readings/1
  # PATCH/PUT /info_for_readings/1.json
  def update
    respond_to do |format|
      if @info_for_reading.update(info_for_reading_params)
        format.html { redirect_to @info_for_reading, notice: 'Info for reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_for_reading }
      else
        format.html { render :edit }
        format.json { render json: @info_for_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_for_readings/1
  # DELETE /info_for_readings/1.json
  def destroy
    authenticate_user
    @info_for_reading.destroy
    respond_to do |format|
      format.html { redirect_to info_for_readings_url, notice: 'Info for reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def authenticate_user
      raise "not authenticated!" if current_user.email != "sinade.kai@gmail.com"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_info_for_reading
      @info_for_reading = InfoForReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_for_reading_params
      params.require(:info_for_reading).permit(
        :name, :email, :year, :month, :day, :hour, :minute, :gender, :personalized_question, :service_type
      )
    end
end
