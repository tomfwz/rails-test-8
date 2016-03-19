require 'rails_helper'

describe UsersController do
  describe '#show' do
    def do_request
      get :show, id: user.id
    end

    let!(:user) { create(:user) }

    it 'renders users#show page' do
      do_request
      expect(response).to render_template :show
    end
  end
end