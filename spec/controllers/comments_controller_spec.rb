require 'rails_helper'

describe CommentsController do
  describe '#new' do
    def do_request
      get :new, parent_id: parent_id
    end

    def do_xhr_request
      xhr :get, :new, parent_id: parent_id
    end

    let!(:user)       { create(:user) }
    let!(:comment)    { create(:comment, user: user) }
    let!(:parent_id)  { nil }

    before { sign_in user }

    it 'renders products#new as html' do
      do_request
      expect(response).to render_template :new
    end

    it 'renders products#new as js' do
      do_xhr_request
      expect(response).to render_template :new
    end
  end
end