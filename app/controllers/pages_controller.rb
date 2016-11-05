class PagesController < ApplicationController
  def home
  end

  def trump_reading
    if cookies[:trump_president_survey] == 'taken'
      @president_survey_results = PresidentSurvey.results('trump')
      @president_survey = nil
    else
      @president_survey = PresidentSurvey.new
    end
  end

  def clinton_reading
    if cookies[:clinton_president_survey] == 'taken'
      @president_survey_results = PresidentSurvey.results('clinton')
      @president_survey = nil
    else
      @president_survey = PresidentSurvey.new
    end
  end

  def show_pdf
    @plan = params[:plan]
    respond_to do |format|
      format.js
    end
  end
end
