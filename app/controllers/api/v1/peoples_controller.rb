class Api::V1::PeoplesController < ApplicationController
    
    def index
        render json: People.limit(params[:limit]).offset(params[:offset]), status: 200
    end

    def show
        people = People.find(params[:id])
        
        render json: people , status: 200
    end
end