class PostingJob < ApplicationJob
  queue_as :default

  def perform(post)
    ActionCable.server.broadcast "postschannel", {
      post: render_message(post)
    }
  end

  private
  def render_message(post)
    PostsController.render(
      partial: 'post',
      locals: {
        post: post
      }
    )
  end
end
