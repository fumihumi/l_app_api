module Api
  module V1
    class RoomsController < Api::V1::ApplicationController
      def index
        render json: Room.all
      end

      def show
        render json: Room.find(params[:id])
      end

      def create
        room = Room.new(room_params)
        if room.save
          render json: room
        else
          render json: { errors: room.errors.full_messages }, status: 400
        end
      end

      private
      def room_params
        params.require(:room).permit(:name)
      end
    end
  end
end
