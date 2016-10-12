class SurveyFormController < ApplicationController
    def index
        render 'index'
    end
    def submit
        session[:result] = params
        session[:count] = 0 unless session.has_key? :count
        session[:count] += 1
        flash[:success]= "Thanks for submitting this form you have submitted #{session[:count]} times now!"
        redirect_to '/result'
    end
    def result
        render 'result'
    end
end
