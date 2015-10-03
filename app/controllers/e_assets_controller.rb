class EAssetsController < ApplicationController
  before_action :set_e_asset, only: [:show, :edit, :update, :destroy]

  # GET /e_assets
  # GET /e_assets.json
  def index
    @e_assets = EAsset.order(:staff)
  end

  # GET /e_assets/1
  # GET /e_assets/1.json
  def show
  end

  # GET /e_assets/new
  def new
    @e_asset = EAsset.new
  end

  # GET /e_assets/1/edit
  def edit
  end

  # POST /e_assets
  # POST /e_assets.json
  def create
    @e_asset = EAsset.new(e_asset_params)

    respond_to do |format|
      if @e_asset.save
        format.html { redirect_to @e_asset, notice: 'E asset was successfully created.' }
        format.json { render :show, status: :created, location: @e_asset }
      else
        format.html { render :new }
        format.json { render json: @e_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_assets/1
  # PATCH/PUT /e_assets/1.json
  def update
    respond_to do |format|
      if @e_asset.update(e_asset_params)
        format.html { redirect_to @e_asset, notice: 'E asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_asset }
      else
        format.html { render :edit }
        format.json { render json: @e_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_assets/1
  # DELETE /e_assets/1.json
  def destroy
    @e_asset.destroy
    respond_to do |format|
      format.html { redirect_to e_assets_url, notice: 'E asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_asset
      @e_asset = EAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e_asset_params
      params.require(:e_asset).permit(:tag_id, :staff, :e_type, :make, :location, :model)
    end
end
