class PagesController < ApplicationController
  def home
  end
  
  def show_pdf
    @plan = params[:plan]
    respond_to do |format|
      format.js
    end
  end
end
