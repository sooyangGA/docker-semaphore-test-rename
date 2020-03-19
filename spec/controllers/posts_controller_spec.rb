require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET index" do
    it "assigns @posts" do
      post = Post.create
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end
end
