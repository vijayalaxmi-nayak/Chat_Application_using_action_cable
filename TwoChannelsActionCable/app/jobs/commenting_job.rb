class CommentingJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "commentschannel", {
      comment: render_comments(comment)
    }
  end

  private
  def render_comments(comment)
    CommentsController.render(
      partial: 'comment',
      locals: {
        comment: comment
      }
    )
  end
end
