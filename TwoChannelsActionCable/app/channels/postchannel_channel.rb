class PostchannelChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "postschannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
