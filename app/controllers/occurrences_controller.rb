class OccurrencesController < ApplicationController
  def index
    @occurrences = Occurrence.all
  end

  def new
    @occurrence = Occurrence.new
  end

  def create
    @occurrence = Occurrence.new(occurrence_params)

    if @occurrence.save
      respond_to do |format|
        format.html { redirect_to :back, notice: 'Ocorrência salva' }
        format.json { render json: @occurrence }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to :back, notice: 'Ocorrência não salva' }
        format.json { render json: @occurrence }
        format.js
      end
    end
  end

private

  def occurrence_params
    params.require(:occurrence).permit(:location, :hour, :description)
  end
end
