class SurveysController < ApplicationController
  def new
  end

  def create
  	@survey = Survey.new( survey_params )
  	if @survey.save
  		redirect_to '/result'
  	else
  		render json: @survey.errors
  	end
  end

  def show
  	@survey = Survey.last
  	@total = Survey.count
  end

  private
  def survey_params
  	params.require(:survey).permit(:name, :location, :language, :comment)
  end


end
