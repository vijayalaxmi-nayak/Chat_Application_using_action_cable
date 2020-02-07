class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.save
    end


    private def comment_params
        params.require(:comment).permit(:body_comment)
    end
end
