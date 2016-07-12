class OccurrencesController < ApplicationController
  before_action :set_occurrence, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  layout 'empty', only: [:show]

  # CRUD #################################################################################################

  # GET /occurrences
  # GET /occurrences.json
  def index
    @occurrences = Occurrence.all
    respond_to do |format|
      format.html
      format.json { render json: @occurrences }
    end
  end

  # GET /occurrences/1
  # GET /occurrences/1.json
  def show
    @comment = Comment.new
    @comments = @occurrence.comments.order('created_at DESC')
  end

  # GET /occurrences/new
  def new
    @occurrence = Occurrence.new
  end

  # GET /occurrences/1/edit
  def edit
  end

  # POST /occurrences
  # POST /occurrences.json
  def create
    @occurrence = current_user.occurrences.build(occurrence_params)
    set_lat_lgn
    set_time

    respond_to do |format|
      if @occurrence.save
        format.html { redirect_to root_path, notice: 'Occurrence was successfully created.' }
        format.json { render :show, status: :created, location: @occurrence }
      else
        format.html { render :new }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occurrences/1
  # PATCH/PUT /occurrences/1.json
  def update
    respond_to do |format|
      if @occurrence.update(occurrence_params)
        format.html { redirect_to @occurrence, notice: 'Occurrence was successfully updated.' }
        format.json { render :show, status: :ok, location: @occurrence }
      else
        format.html { render :edit }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occurrences/1
  # DELETE /occurrences/1.json
  def destroy
    @occurrence.destroy
    respond_to do |format|
      format.html { redirect_to occurrences_url, notice: 'Occurrence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # End of CRUD #################################################################################################

  def upvote
    @occurrence.upvote()

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { render json: @resource }
      format.js   { render nothing: true }
    end
  end

  def downvote
    @occurrence.downvote()

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { render json: @resource }
      format.js   { render nothing: true }
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_occurrence
    @occurrence = Occurrence.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def occurrence_params
    params.require(:occurrence).permit(:description, :date, :hour, :rating, :latitude, :longitude, :location)
  end

  def set_lat_lgn
    @occurrence.get_lat_long(occurrence_params[:location])
  end

  def set_time
    @occurrence.set_time
  end
end
