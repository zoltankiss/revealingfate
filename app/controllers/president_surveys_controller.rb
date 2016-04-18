class PresidentSurveysController < ApplicationController
  def create
    cookies[:president_survey] = 'taken'
    PresidentSurvey.create! choice: params[:president_survey][:choice]
    redirect_to root_path
  end
end
