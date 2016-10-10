class TimeController < ApplicationController
    def index
        @day = Time.now.strftime("%b %d, %Y ")
        @time = Time.now.strftime("%l:%M %P")
        render 'clock'
    end
end
