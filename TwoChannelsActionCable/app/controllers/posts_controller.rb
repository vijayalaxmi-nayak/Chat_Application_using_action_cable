class PostsController < ApplicationController
    def create
        @post = Post.new(post_params)
        @post.save
    end

    private def post_params
        params.require(:post).permit(:body)
    end
end
