class ResearchParticipantsController < ApplicationController
  before_action :set_research_participant, only: [:show, :edit, :update, :destroy]

  # GET /research_participants
  # GET /research_participants.json
  def index
    @research_participants = ResearchParticipant.all
  end

  # GET /research_participants/1
  # GET /research_participants/1.json
  def show
  end

  # GET /research_participants/new
  def new
    @research_participant = ResearchParticipant.new
  end

  # GET /research_participants/1/edit
  def edit
  end

  # POST /research_participants
  # POST /research_participants.json
  def create
    @research_participant = ResearchParticipant.new(research_participant_params)

    respond_to do |format|
      if @research_participant.save
        format.html { redirect_to @research_participant, notice: 'Research participant was successfully created.' }
        format.json { render :show, status: :created, location: @research_participant }
      else
        format.html { render :new }
        format.json { render json: @research_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_participants/1
  # PATCH/PUT /research_participants/1.json
  def update
    respond_to do |format|
      if @research_participant.update(research_participant_params)
        format.html { redirect_to @research_participant, notice: 'Research participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @research_participant }
      else
        format.html { render :edit }
        format.json { render json: @research_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_participants/1
  # DELETE /research_participants/1.json
  def destroy
    @research_participant.destroy
    respond_to do |format|
      format.html { redirect_to research_participants_url, notice: 'Research participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_participant
      @research_participant = ResearchParticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_participant_params
      params.require(:research_participant).permit(:name)
    end
end
