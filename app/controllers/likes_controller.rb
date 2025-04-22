class LikesController < ApplicationController
  before_action :set_post

  def create
    @like = @post.likes.build(user: current_user)
    if @like.save
      redirect_back fallback_location: @post, notice: "❤️ Liked!"
    else
      redirect_back fallback_location: @post, alert: "Unable to like."
    end
  end

  def destroy
    @like = @post.likes.find_by(user: current_user)
    if @like&.destroy
      redirect_back fallback_location: @post, notice: "💔 Unliked."
    else
      redirect_back fallback_location: @post, alert: "Nothing to unlike."
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
