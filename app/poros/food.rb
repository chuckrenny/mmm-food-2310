class Food
  attr_reader :text, :reply, :source, :tweet_creation, :username, :profile_image, :profile_link

  def initialize(data)
    @text = data[:text]
    @reply = data[:in_reply_to_screen_name]
    @source = data[:source]
    @tweet_creation = data[:created_at]
    @username = data[:user][:screen_name]
    @profile_image = data[:user][:profile_image_url]
    @profile_link = data[:user][:url]
  end
end
