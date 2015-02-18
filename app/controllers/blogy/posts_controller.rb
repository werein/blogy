require_dependency "blogy/application_controller"

module Blogy
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    # GET /posts
    def index
      @posts = Post.all
      respond_with @posts, root: :'blogy/posts'
    end

    # GET /posts/1
    def show
      respond_with @post, root: :'blogy/post'
    end

    # GET /posts/new
    def new
      @post = Post.new
      respond_with @post, root: :'blogy/post'
    end

    # GET /posts/1/edit
    def edit
      respond_with @post, root: :'blogy/post'
    end

    # POST /posts
    def create
      @post = Post.create(post_params)
      respond_with @post, root: :'blogy/post'
    end

    # PATCH/PUT /posts/1
    def update
      @post.update(post_params)
      respond_with @post, root: :'blogy/post'
    end

    # DELETE /posts/1
    def destroy
      @post.destroy
      respond_with @post, root: :'blogy/post'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def post_params
        params.require(:'blogy/post').permit(:published, :draft, :ilustration, :title, :locale, :slug, :text, :storage, :format)
      end
  end
end
