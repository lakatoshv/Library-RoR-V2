class ZhanrsController < ApplicationController
  before_action :set_zhanr, only: [:show]

  # GET /zhanrs
  # GET /zhanrs.json
  def index
    @zhanrs = Zhanr.all
  end

  # GET /zhanrs/1
  # GET /zhanrs/1.json
  def show
  end

  # GET /zhanrs/new
  def new
    @zhanr = Zhanr.new
  end

  # GET /zhanrs/1/edit
  def edit
  end

  # POST /zhanrs
  # POST /zhanrs.json
  def create
    @zhanr = Zhanr.new(zhanr_params)

    respond_to do |format|
      if @zhanr.save
        format.html { redirect_to @zhanr, notice: 'Zhanr was successfully created.' }
        format.json { render :show, status: :created, location: @zhanr }
      else
        format.html { render :new }
        format.json { render json: @zhanr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zhanrs/1
  # PATCH/PUT /zhanrs/1.json
  def update
    respond_to do |format|
      if @zhanr.update(zhanr_params)
        format.html { redirect_to @zhanr, notice: 'Zhanr was successfully updated.' }
        format.json { render :show, status: :ok, location: @zhanr }
      else
        format.html { render :edit }
        format.json { render json: @zhanr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zhanrs/1
  # DELETE /zhanrs/1.json
  def destroy
    @zhanr.destroy
    respond_to do |format|
      format.html { redirect_to zhanrs_url, notice: 'Zhanr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zhanr
      @zhanr = Zhanr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zhanr_params
      params.require(:zhanr).permit(:zhanr)
    end
end
