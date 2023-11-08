class CategoroysController < ApplicationController
  before_action :set_categoroy, only: %i[ show edit update destroy ]

  # GET /categoroys or /categoroys.json
  def index
    @categoroys = Categoroy.all
  end

  # GET /categoroys/1 or /categoroys/1.json
  def show
  end

  # GET /categoroys/new
  def new
    @categoroy = Categoroy.new
  end

  # GET /categoroys/1/edit
  def edit
  end

  # POST /categoroys or /categoroys.json
  def create
    @categoroy = Categoroy.new(categoroy_params)

    respond_to do |format|
      if @categoroy.save
        format.html { redirect_to categoroy_url(@categoroy), notice: "Categoroy was successfully created." }
        format.json { render :show, status: :created, location: @categoroy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoroy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoroys/1 or /categoroys/1.json
  def update
    respond_to do |format|
      if @categoroy.update(categoroy_params)
        format.html { redirect_to categoroy_url(@categoroy), notice: "Categoroy was successfully updated." }
        format.json { render :show, status: :ok, location: @categoroy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoroy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoroys/1 or /categoroys/1.json
  def destroy
    @categoroy.destroy

    respond_to do |format|
      format.html { redirect_to categoroys_url, notice: "Categoroy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoroy
      @categoroy = Categoroy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoroy_params
      params.require(:categoroy).permit(:name)
    end
end
