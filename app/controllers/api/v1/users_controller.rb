module Api
  module V1
    class UsersController < Api::V1::ApplicationController
      def index 
        render json: User.all
      end

      def show
        render json: User.find(params[:id])
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: user
        else
          render json: { errors: user.errors.full_messages }, status: 400
        end
      end

      private
      def user_params
        params.require(:user).permit(:name, :nickname)
      end
    end
  end
end
