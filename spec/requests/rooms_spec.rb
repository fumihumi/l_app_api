require 'rails_helper'

RSpec.describe 'RoomsController' do
  describe 'index', autodoc: true do
    before { 3.times { create(:room) } }

    it 'Roomの一覧を取得する', autodoc: true do
      get api_v1_rooms_path

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'show' do
    let!(:room) { create(:room) }

    it 'get room', autodoc: true do
      get api_v1_room_path(room)

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'create' do
    it 'new room', autodoc: true do
      post api_v1_rooms_path, params: { room: { name: 'test' } }
      expect(response).to have_http_status(:ok)
    end
  end
end
