require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    def do_request
      get :index
    end

    it 'returns index page' do
      do_request
      expect(response).to render_template :index
    end
  end
end