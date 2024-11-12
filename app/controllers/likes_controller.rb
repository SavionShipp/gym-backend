class LikesController < ApplicationController
  def index
    @likes = Like.all
    render :index
  end

  def create
    @like = Like.new(
      exercise_id: params[:exercise_id],
    )
  end

end