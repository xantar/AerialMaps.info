class MappingLevelsController < ApplicationController
  before_action :set_mapping_level, only: [:show, :edit, :update, :destroy]

  # GET /mapping_levels
  # GET /mapping_levels.json
  def index
    @mapping_levels = MappingLevel.all
  end

  # GET /mapping_levels/1
  # GET /mapping_levels/1.json
  def show
  end

  # GET /mapping_levels/new
  def new
    @mapping_level = MappingLevel.new
  end

  # GET /mapping_levels/1/edit
  def edit
  end

  # POST /mapping_levels
  # POST /mapping_levels.json
  def create
    @mapping_level = MappingLevel.new(mapping_level_params)

    respond_to do |format|
      if @mapping_level.save
        format.html { redirect_to @mapping_level, notice: 'Mapping level was successfully created.' }
        format.json { render :show, status: :created, location: @mapping_level }
      else
        format.html { render :new }
        format.json { render json: @mapping_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapping_levels/1
  # PATCH/PUT /mapping_levels/1.json
  def update
    respond_to do |format|
      if @mapping_level.update(mapping_level_params)
        format.html { redirect_to @mapping_level, notice: 'Mapping level was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapping_level }
      else
        format.html { render :edit }
        format.json { render json: @mapping_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapping_levels/1
  # DELETE /mapping_levels/1.json
  def destroy
    @mapping_level.destroy
    respond_to do |format|
      format.html { redirect_to mapping_levels_url, notice: 'Mapping level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapping_level
      @mapping_level = MappingLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapping_level_params
      params.require(:mapping_level).permit(:name)
    end
end
