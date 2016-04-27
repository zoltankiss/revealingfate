class PresidentSurveysController < ApplicationController
  def create
    cookies["#{params[:president_survey][:name]}_president_survey".to_sym] = 'taken'
    PresidentSurvey.create! choice: params[:president_survey][:choice], name: params[:president_survey][:name]
    redirect_to params[:president_survey][:redirect]
  end
end
