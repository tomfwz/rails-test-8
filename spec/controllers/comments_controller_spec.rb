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

  describe '#create' do
    def do_request
      post :create, comment: comment
    end


    context 'creates a comment to a user profile' do
      let!(:user)     { create(:user) }
      let!(:comment)  { attributes_for(:comment, commentable_id: user.id, commentable_type: 'User', user_id: user.id) }

      before { sign_in user }

      it 'saves a comment' do
        expect { do_request }.to change(Comment, :count).by(1)
      end

      it 'increases number of comments of a user profile' do
        expect { do_request }.to change(user.comments, :count).by(1)
      end
    end

    context 'creates a comment to a post' do
      let!(:user)     { create(:user) }
      let!(:post)     { create(:post, user_id: user.id) }
      let!(:comment)  { attributes_for(:comment, commentable_id: post.id, commentable_type: 'Post', user_id: user.id) }

      before { sign_in user }

      it 'saves a comment' do
        binding.pry
        expect { do_request }.to change(Comment, :count).by(1) 
      end

      it 'increases number of comments of a post' do
        expect { do_request }.to change(post.comments.reload, :count).by(1) 
      end
    end

    context 'creates a comment as a reply' do
      let!(:user)         { create(:user) }
      let!(:post)         { create(:post, user_id: user.id) }
      let!(:root_comment) { create(:comment, commentable_id: post.id, commentable_type: 'Post', user_id: user.id, parent_id: nil) }
      let!(:comment)      { attributes_for(:comment, parent_id: root_comment.id, user_id: user.id) }

      it 'saves a comment' do
        expect { do_request }.to change(Comment, :count).by(1) 
      end

      it 'adds a comment to root comment' do
        expect { do_request }.to change(root_comment.children, :count).by(1) 
      end
    end
  end
end