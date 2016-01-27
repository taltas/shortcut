class MetaInfosController < ApplicationController
  before_action :set_meta_info, only: [:show, :edit, :update, :destroy]

  # GET /meta_infos
  # GET /meta_infos.json
  def index
    # @meta_infos = MetaInfo.all
  end

  # GET /meta_infos/1
  # GET /meta_infos/1.json
  def show
  end

  # GET /meta_infos/new
  def new
    @meta_info = MetaInfo.new
  end

  # GET /meta_infos/1/edit
  def edit
  end

  # POST /meta_infos
  # POST /meta_infos.json
  def create
    @meta_info = MetaInfo.new(meta_info_params)

    respond_to do |format|
      if @meta_info.save
        format.html { redirect_to @meta_info, notice: 'Meta info was successfully created.' }
        format.json { render :show, status: :created, location: @meta_info }
      else
        format.html { render :new }
        format.json { render json: @meta_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meta_infos/1
  # PATCH/PUT /meta_infos/1.json
  def update
    respond_to do |format|
      if @meta_info.update(meta_info_params)
        format.html { redirect_to @meta_info, notice: 'Meta info was successfully updated.' }
        format.json { render :show, status: :ok, location: @meta_info }
      else
        format.html { render :edit }
        format.json { render json: @meta_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_infos/1
  # DELETE /meta_infos/1.json
  def destroy
    @meta_info.destroy
    respond_to do |format|
      format.html { redirect_to meta_infos_url, notice: 'Meta info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meta_info
      @meta_info = MetaInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meta_info_params
      params[:meta_info]
    end
end
