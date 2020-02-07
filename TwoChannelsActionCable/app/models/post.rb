class Post < ApplicationRecord
    validates :body, presence:true

    after_create_commit{
        PostingJob.perform_later(self)
    }
end
