class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :edit, :update, :destroy]

  # GET /readings
  # GET /readings.json
  def index
    @readings = Reading.all
  end

  # GET /readings/1
  # GET /readings/1.json
  def show
    set_reading
  end

  # GET /readings/new
  def new
    @reading = Reading.new
  end

  # GET /readings/1/edit
  def edit
  end

  # POST /readings
  # POST /readings.json
  def create
    @reading = Reading.new(reading_params)

    respond_to do |format|
      if @reading.save
        format.html { redirect_to @reading, notice: 'Reading was successfully created.' }
        format.json { render :show, status: :created, location: @reading }
      else
        format.html { render :new }
        format.json { render json: @reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /readings/1
  # PATCH/PUT /readings/1.json
  def update
    respond_to do |format|
      redirect_to_id = nil
      if params['field_updated']
        redirect_to_id = ReadingsHelper.button_label_to_button_id(params['field_updated'])
      end

      if @reading.update(reading_params)
        redirect_url = edit_reading_path(@reading)
        redirect_url += '#' + redirect_to_id if redirect_to_id
        format.html { redirect_to redirect_url, notice: 'Reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading }
      else
        format.html { render :edit }
        format.json { render json: @reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readings/1
  # DELETE /readings/1.json
  def destroy
    @reading.destroy
    respond_to do |format|
      format.html { redirect_to readings_url, notice: 'Reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading
      @reading = Reading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reading_params
      params.require(:reading).permit(
        :title,
        :hour_roles,
        :day_roles,
        :month_roles,
        :year_roles,
        :significance_of_your_celestial_element_sign,
        :significance_of_the_year_pillar,
        :significance_of_the_month_pillar,
        :significance_of_the_day_pillar,
        :significance_of_the_hour_pillar,
        :five_phases_analysis,
        :nature_and_disposition_analysis,
        :shao_kang_jies_four_characters,
        :feng_shui_analysis,
        :propositions_for_the_day_master,
        :hour,
        :day,
        :month,
        :year,
        :hour_element,
        :day_element,
        :month_element,
        :year_element,
        :hour_cardinal_direction,
        :day_cardinal_direction,
        :month_cardinal_direction,
        :year_cardinal_direction
      )
    end
end
