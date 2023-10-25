class SprintsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sprint, only: [:show, :edit, :update, :destroy]

  def index
    @sprints = Sprint.all
    render json: @sprints
  end

  def show
    render json: @sprint
  end

  def create
    @sprint = Sprint.new(sprint_params)
    if @sprint.save
      render json: @sprint, status: :created
    else
      render json: @sprint.errors, status: :unprocessable_entity
    end
  end

  def update
    if @sprint.update(sprint_params)
      render json: @sprint
    else
      render json: @sprint.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @sprint.destroy
    head :no_content
  end

  private

  def set_sprint
    @sprint = Sprint.find(params[:id])
  end

  def sprint_params
    params.require(:sprint).permit(:name, :start_date, :end_date, :squad_id)
  end
end
