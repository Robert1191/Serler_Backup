class ResearchMethodsController < ApplicationController
  before_action :set_research_method, only: [:show, :edit, :update, :destroy]

  # GET /research_methods
  # GET /research_methods.json
  def index
    @research_methods = ResearchMethod.all
  end

  # GET /research_methods/1
  # GET /research_methods/1.json
  def show
  end

  # GET /research_methods/new
  def new
    @research_method = ResearchMethod.new
  end

  # GET /research_methods/1/edit
  def edit
  end

  # POST /research_methods
  # POST /research_methods.json
  def create
    @research_method = ResearchMethod.new(research_method_params)

    respond_to do |format|
      if @research_method.save
        format.html { redirect_to @research_method, notice: 'Research method was successfully created.' }
        format.json { render :show, status: :created, location: @research_method }
      else
        format.html { render :new }
        format.json { render json: @research_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_methods/1
  # PATCH/PUT /research_methods/1.json
  def update
    respond_to do |format|
      if @research_method.update(research_method_params)
        format.html { redirect_to @research_method, notice: 'Research method was successfully updated.' }
        format.json { render :show, status: :ok, location: @research_method }
      else
        format.html { render :edit }
        format.json { render json: @research_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_methods/1
  # DELETE /research_methods/1.json
  def destroy
    @research_method.destroy
    respond_to do |format|
      format.html { redirect_to research_methods_url, notice: 'Research method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_method
      @research_method = ResearchMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_method_params
      params.require(:research_method).permit(:name)
    end
end
