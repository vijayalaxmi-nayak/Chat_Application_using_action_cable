class Comment < ApplicationRecord
    validates :body_comment, presence:true

    after_create_commit{
        CommentingJob.perform_later(self)
    }
end
