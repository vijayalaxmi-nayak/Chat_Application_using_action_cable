class PagesController < ApplicationController
    def home
        @posts = Post.all
        @post = Post.new

        @comments = Comment.all
        @comment = Comment.new
    end
end
