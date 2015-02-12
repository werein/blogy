require 'test_helper'

module Blogy
  class PostsControllerTest < ActionController::TestCase
    before do
      @routes = Blogy::Engine.routes
      @post = build_stubbed(:post)
      Post.stubs(:find).returns(@post)
    end

    it "should get index" do
      get :index, format: :json
      assert_response :success
      assert_not_nil assigns(:posts)
    end

    it "should get new" do
      get :new, format: :json
      assert_response :success
      assert_not_nil assigns(:post)
    end

    it "should create post" do
      Post.expects(:create).returns(@post)
      Post.any_instance.stubs(:save)

      post :create, format: :json, 'blogy/post' => { draft: @post.draft, ilustration: @post.ilustration, published: @post.published }

      assert_response :success
      assert_not_nil assigns(:post)
    end

    it "should show post" do
      get :show, format: :json, id: @post
      assert_response :success
      assert_not_nil assigns(:post)
    end

    it "should get edit" do
      get :edit, format: :json, id: @post
      assert_response :success
      assert_not_nil assigns(:post)
    end

    it "should update post" do
      @post.stubs(:save)

      patch :update, format: :json, id: @post, 'blogy/post' => { draft: @post.draft, ilustration: @post.ilustration, published: @post.published }
      assert_response :success
      assert_not_nil assigns(:post)
    end

    it "should destroy post" do
      @post.stubs(:destroy)

      delete :destroy, format: :json, id: @post

      assert_response :success
      assert_not_nil assigns(:post)
    end
  end
end
