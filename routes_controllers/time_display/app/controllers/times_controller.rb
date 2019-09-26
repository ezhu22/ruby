class TimesController < ApplicationController

    def index
        @current_time = Time.now.in_time_zone("Central Time (US & Canada)")
    end
end
