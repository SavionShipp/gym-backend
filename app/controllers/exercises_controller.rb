class ExercisesController < ApplicationController

  def index
    @exercise = Exercise.all
    render :index
  end

  
end
