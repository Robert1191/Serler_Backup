class DevMethodsController < ApplicationController
  before_action :set_dev_method, only: [:show, :edit, :update, :destroy]

  # GET /dev_methods
  # GET /dev_methods.json
  def index
    @dev_methods = DevMethod.all
  end

  # GET /dev_methods/1
  # GET /dev_methods/1.json
  def show
  end

  # GET /dev_methods/new
  def new
    @dev_method = DevMethod.new
  end

  # GET /dev_methods/1/edit
  def edit
  end

  # POST /dev_methods
  # POST /dev_methods.json
  def create
    @dev_method = DevMethod.new(dev_method_params)

    respond_to do |format|
      if @dev_method.save
        format.html { redirect_to @dev_method, notice: 'Dev method was successfully created.' }
        format.json { render :show, status: :created, location: @dev_method }
      else
        format.html { render :new }
        format.json { render json: @dev_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_methods/1
  # PATCH/PUT /dev_methods/1.json
  def update
    respond_to do |format|
      if @dev_method.update(dev_method_params)
        format.html { redirect_to @dev_method, notice: 'Dev method was successfully updated.' }
        format.json { render :show, status: :ok, location: @dev_method }
      else
        format.html { render :edit }
        format.json { render json: @dev_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_methods/1
  # DELETE /dev_methods/1.json
  def destroy
    @dev_method.destroy
    respond_to do |format|
      format.html { redirect_to dev_methods_url, notice: 'Dev method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_method
      @dev_method = DevMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dev_method_params
      params.require(:dev_method).permit(:name)
    end
end
