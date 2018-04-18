class PostsController < ApplicationController

    before_action :find_post, only: [:show, :edit, :update, :delete]

    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @posts = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
          redirect_to @post, notice: "the post was created"
      else
          render 'new'
      end

    end

    def edit
    end

    def update
      if @post.update(post_params)
          redirect_to @post, notice: "update is successful"
      else
          render 'edit'
      end
    end

    def delete
      @post.destroy
      redirect_to root_path, notice: "post destroyed"
    end

private

    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end
