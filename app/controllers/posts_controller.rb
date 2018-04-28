class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new
    end
    
    def show
        @post = Post.find(params[:post_id])
        # id parameter명은 변경하지 않고 해결하세요
    end
    
    def create
        @post = Post.new
        @post = params[:title]
        @post = params[:content]
        @post.save
        
        redirect_to '/posts/index'
    end
    
    def edit
        @edit_post = Post.find(params[:edit_id])
        # id parameter명은 변경하지 않고 해결하세요
    end
    
    def update
        @edit_post = Post.find(params[:update_id])
        # id parameter명은 변경하지 않고 해결하세요
        @edit_post = params[:title]
        @edit_post = params[:content]
        @edit_post.save
        
        redirect_to '/posts/index'
    end
    
    
    def destroy
        @destroy_post = Post.find(params[:destroy_post_id])
        # id parameter명은 변경하지 않고 해결하세요
        @destroy_post.destroy
        @destroy_post.save

        redirect_to '/posts/index'
    end
end
