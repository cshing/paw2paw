class ApplicationController < ActionController::Base
    def index
        render 'application/map'
    end

    def @getLocation
        navigator.geolocation.getCurrentPosition
        showPostion
    end

    def showPosition(position)
        x.innerHTML = [position.coords.latitude, position.coords.longitude]
    end
end
