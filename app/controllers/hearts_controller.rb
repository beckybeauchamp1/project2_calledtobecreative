class HeartsController < ApplicationController
  def create
    @heart = Heart.new(heart_params)

    if @heart.save
      redirect_to @heart.post, notice: "Hearted this post!"
    else
      redirect_to root_url, notice: "Oh no! This couldn't be hearted!"
    end
  end

  private
  def heart_params
    params.require(:heart).permit(:post_id)
  end
end
