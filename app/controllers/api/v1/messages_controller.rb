module Api
  module V1
    class MessagesController < Api::V1::ApplicationController
      def index
        @messages = Message.joins(:user).where(room_id: params[:room_id])

        render 'index', formats: 'json', handlers: 'jbuilder'
      end

      def show
        message = Message.where(id: params[:id], room_id: params[:room_id])

        render json: message
      end

      def create
        # ↓だとUserが存在してなくても作成できちゃうので一旦ベタガキで対応する
        # message = Message.new(message_params)
        user = User.find(message_params[:user_id])

        message = user.messages.new(
          message: message_params[:message],
          room_id: params[:room_id]
        )

        if message.save
          render json: message
        else
          render json: { errors: message.errors.full_messages }, status: 400
        end
      end

      def destroy
        # TODO 無かったら404とかのが自然な気がする
        message = Message.find_by!(id: params[:id], room_id: params[:room_id])

        if message.destroy
          render json: message
        else
          # CHECK 動作確認してない
          render json: { errors: message.errors.full_messages }, status: 400
        end
      end

      private

      def message_params
        params.require(:message).permit(:message, :user_id).merge(room_id: params[:room_id])
      end
    end
  end
end
