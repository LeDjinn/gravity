class StaticController < ApplicationController
    def home
        render json: {
            margin: '50px',
            padding: '50px',
            background: 'ffffff',
            fontFamily: 'Arial',
            buttonbg: '#ff0',
            width: '300px',}
    end
end
