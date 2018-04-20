class KriticsController < ApplicationController
  before_action :set_kritic, only: [:show, :edit, :update, :destroy, :like, :dislike]
  before_action :authenticate_user!, only: [:new, :edit]
  # GET /kritics
  # GET /kritics.json
  def index
    if params[:search]
      @kritics = Kritic.search(params[:search])
      @title = params[:search]
    else
      redirect_to(books_path)
    end
  end
  def like
    @kritic.liked_by current_user
    redirect_to :back
  end
  def dislike
    @kritic.disliked_by current_user
    redirect_to :back
  end

  # GET /kritics/1
  # GET /kritics/1.json
  def show
  end

  # GET /kritics/new
  def new
    if params[:search]
      @kritics = params[:search]
    else
      redirect_to(books_path)
    end
    @kritic = Kritic.new
  end

  # GET /kritics/1/edit
  def edit
  end

  # POST /kritics
  # POST /kritics.json
  def create
    @kritic = Kritic.new(kritic_params)

    respond_to do |format|
      if @kritic.save
        format.html { redirect_to @kritic, notice: 'Kritic was successfully created.' }
        format.json { render :show, status: :created, location: @kritic }
      else
        format.html { render :new }
        format.json { render json: @kritic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kritics/1
  # PATCH/PUT /kritics/1.json
  def update
    respond_to do |format|
      if @kritic.update(kritic_params)
        format.html { redirect_to @kritic, notice: 'Kritic was successfully updated.' }
        format.json { render :show, status: :ok, location: @kritic }
      else
        format.html { render :edit }
        format.json { render json: @kritic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kritics/1
  # DELETE /kritics/1.json
  def destroy
    @kritic.destroy
    respond_to do |format|
      format.html { redirect_to kritics_url, notice: 'Kritic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_kritic
      @kritic = Kritic.search(params[:search])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_kritic
      @kritic = Kritic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kritic_params
      params.require(:kritic).permit(:name, :title_book, :recensiya, :ocinka)
    end
end
