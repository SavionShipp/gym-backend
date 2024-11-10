class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    render :index
  end

  def show 
    @routines = Routine.find_by(id: params[":id"])
    render :show
  end

  def destroy
    @routines = Routine.find_by(id params[":id"])
    @routines.destroy
    render json: {message: "routine has been deleted"}
  end

  def create
    @routines = Routine.new(
      user_id: current_user.id,
      exercise_id: params[:exercise_id],
      reps: params[:reps],
      sets: params[:sets]
    )
    @routine.save
    render :show
  end
end
