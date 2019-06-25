require 'rails_helper'

RSpec.describe 'UsersController' do

  describe 'index', autodoc: true do
    before { 3.times { create(:user) } }

    it 'Userの一覧を取得する', autodoc: true do
      get api_v1_users_path

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'show' do
    let!(:user) { create(:user) }

    it 'get user', autodoc: true do
      get api_v1_user_path(user)

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'create' do
    it 'new user', autodoc: true do
      post api_v1_users_path, params: { user: { name: 'test', nickname: 'test1' } }
      expect(response).to have_http_status(:ok)
    end
  end
end
