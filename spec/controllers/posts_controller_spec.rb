require 'rails_helper'

describe PostsController do
  describe '#show' do
    def do_request
      get :show, id: post.id
    end

    let!(:user) { create(:user) }
    let!(:post) { create(:post, user_id: user.id) }

    it 'renders posts#show page' do
      do_request
      expect(response).to render_template :show
    end
  end
end