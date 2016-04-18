class PagesController < ApplicationController
  def home
    if cookies[:president_survey] == 'taken'
      @president_survey_results = PresidentSurvey.results
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
