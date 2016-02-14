class InfoForRomanticReadingsController < ApplicationController
  before_action :set_info_for_romantic_reading, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token

  # GET /info_for_romantic_readings
  # GET /info_for_romantic_readings.json
  def index
    authenticate_user
    @info_for_romantic_readings = InfoForRomanticReading.all
  end

  # GET /info_for_romantic_readings/1
  # GET /info_for_romantic_readings/1.json
  def show
    authenticate_user
  end

  # GET /info_for_romantic_readings/new
  def new
    @info_for_romantic_reading = InfoForRomanticReading.new
  end

  # GET /info_for_romantic_readings/1/edit
  def edit
    authenticate_user
  end

  # POST /info_for_romantic_readings
  # POST /info_for_romantic_readings.json
  def create
    year1 = info_for_romantic_reading_params[:year1].to_i
    month1 = info_for_romantic_reading_params[:month1].to_i
    day1 = info_for_romantic_reading_params[:day1].to_i
    hour1 = info_for_romantic_reading_params[:hour1].to_i
    minute1 = info_for_romantic_reading_params[:minute1].to_i
    hash = info_for_romantic_reading_params.to_h
    hash.delete('year1')
    hash.delete('month1')
    hash.delete('day1')
    hash.delete('hour1')
    hash.delete('minute1')
    birth_date1 = DateTime.new(
      year1, month1, day1, hour1, minute1
    )

    year2 = info_for_romantic_reading_params[:year2].to_i
    month2 = info_for_romantic_reading_params[:month2].to_i
    day2 = info_for_romantic_reading_params[:day2].to_i
    hour2 = info_for_romantic_reading_params[:hour2].to_i
    minute2 = info_for_romantic_reading_params[:minute2].to_i
    hash.delete('year2')
    hash.delete('month2')
    hash.delete('day2')
    hash.delete('hour2')
    hash.delete('minute2')
    birth_date2 = DateTime.new(
      year2, month2, day2, hour2, minute2
    )

    hash.merge!(birth_date1: birth_date1, birth_date2: birth_date2)
    @info_for_romantic_reading = InfoForRomanticReading.create!(hash)
    render text: 'success!'
  end

  # PATCH/PUT /info_for_romantic_readings/1
  # PATCH/PUT /info_for_romantic_readings/1.json
  def update
    respond_to do |format|
      if @info_for_romantic_reading.update(info_for_romantic_reading_params)
        format.html { redirect_to @info_for_romantic_reading, notice: 'Info for reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_for_romantic_reading }
      else
        format.html { render :edit }
        format.json { render json: @info_for_romantic_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_for_romantic_readings/1
  # DELETE /info_for_romantic_readings/1.json
  def destroy
    authenticate_user
    @info_for_romantic_reading.destroy
    respond_to do |format|
      format.html { redirect_to info_for_romantic_readings_url, notice: 'Info for reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_for_romantic_reading
      @info_for_romantic_reading = InfoForRomanticReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_for_romantic_reading_params
      params.require(:info_for_romantic_reading).permit(
        :name1, :email1, :year1, :month1, :day1, :hour1, :minute1, :gender1,
        :name2, :email2, :year2, :month2, :day2, :hour2, :minute2, :gender2,
        :personalized_question
      )
    end
end
