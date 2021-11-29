class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        gym = Gym.all
        render json: gym
    end

    def show
        find_gym
        render json: gym, status: :ok
    end

    private

    def find_gym
        gym = Gym.find(params[:id])
    end

    def render_not_found_response(error)
        render json: error.message, status: :not_found
    end

end
