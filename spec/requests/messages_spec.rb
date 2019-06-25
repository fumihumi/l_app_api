require 'rails_helper'

RSpec.describe 'MessagesController' do
  before do
    room = create(:room)
    u1, u2 = [create(:user), create(:user)]
    5.times do
      Message.create(
        message: SecureRandom.hex(10),
        user_id: [u1, u2].sample.id,
        room_id: room.id
      )
    end
  end

  describe 'index', autodoc: true do
    it 'Messageの一覧を取得する', autodoc: true do
      room_id = Room.first.id
      get api_v1_room_messages_path(room_id)

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'show' do
    it 'get messaege', autodoc: true do
      message = Message.first
      get api_v1_room_message_path(message.room_id, message.id)

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'create' do
    it 'new message', autodoc: true do
      user_id = User.all.sample.id
      room_id = Room.first.id
      post api_v1_room_messages_path(room_id), params: {
        message: { message: 'test', user_id: user_id }
      }

      expect(response).to have_http_status(:ok)
    end
  end
end
