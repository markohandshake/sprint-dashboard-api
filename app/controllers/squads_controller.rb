class SquadsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_squad, only: [:show, :edit, :update, :destroy]

    def index
      @squads = Squad.all
      render json: @squads
    end

    def show
      render json: @squad
    end

    def create
      @squad = Squad.new(squad_params)
      if @squad.save
        render json: @squad, status: :created
      else
        render json: @squad.errors, status: :unprocessable_entity
      end
    end

    def update
      if @squad.update(squad_params)
        render json: @squad
      else
        render json: @squad.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @squad.destroy
      head :no_content
    end

    private

    def set_squad
      @squad = Squad.find(params[:id])
    end

    def squad_params
      params.require(:squad).permit(:name, :user_id)
    end
  end