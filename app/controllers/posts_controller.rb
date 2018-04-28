class PostsController < ApplicationController
    
    def index
        @posts = post.all
    end
    
    def new
    end
    
    def show
        @post = post.find(params[:post_id])
    end
    
    def create
        @post = post.new
        @post = params[:title]
        @post = params[:content]
        @post.save
        
        redirect_to '/posts/index'
    end
    
    def edit
        @edit_post = post.find(params[:edit_id])
    end
    
    def update
        @edit_post = post.find(params[:update_id])
        @edit_post = params[:title]
        @edit_post = params[:content]
        @edit_post.save
        
        redirect_to '/posts/index'
    end
    
    
    def destroy
        @destroy_post = post.find(params[:destroy_post_id])
        @destroy_post.destroy
        @destroy_post.save

        redirect_to '/posts/index'
    end
end
