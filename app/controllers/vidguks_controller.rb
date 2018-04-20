class VidguksController < InheritedResources::Base
before_action :set_vidguk, only: [:show, :edit, :update, :destroy, :like, :dislike]
before_action :authenticate_user!, only: [:new, :edit]
  # GET /vidguks
  # GET /vidguks.json
  def index
    if params[:search]
      @vidguks = Vidguk.search(params[:search])
      @title = params[:search]
    else
      redirect_to(books_path)
    end
  end

  # GET /vidguks/1
  # GET /vidguks/1.json
  def show
  end
  def like
    @vidguk.liked_by current_user
    redirect_to :back
  end
  def dislike
    @vidguk.disliked_by current_user
    redirect_to :back
  end

  # GET /vidguks/new
  def new
    if params[:search]
      @kritics = params[:search]
    else
      redirect_to(books_path)
    end
    @vidguk = Vidguk.new
  end

  # GET /vidguks/1/edit
  def edit
  end

  # POST /vidguks
  # POST /vidguks.json
  def create
    @vidguk = Vidguk.new(vidguk_params)

    respond_to do |format|
      if @vidguk.save
        format.html { redirect_to @vidguk, notice: 'Vidguk was successfully created.' }
        format.json { render :show, status: :created, location: @vidguk }
      else
        format.html { render :new }
        format.json { render json: @vidguk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vidguks/1
  # PATCH/PUT /vidguks/1.json
  def update
    respond_to do |format|
      if @vidguk.update(vidguk_params)
        format.html { redirect_to @vidguk, notice: 'Vidguk was successfully updated.' }
        format.json { render :show, status: :ok, location: @vidguk }
      else
        format.html { render :edit }
        format.json { render json: @vidguk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vidguks/1
  # DELETE /vidguks/1.json
  def destroy
    @vidguk.destroy
    respond_to do |format|
      format.html { redirect_to vidguks_url, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def find_kritic
      @vidguk = Vidguk.search(params[:search])
    end
  def set_vidguk
      @vidguk = Vidguk.find(params[:id])
    end

    def vidguk_params
      params.require(:vidguk).permit(:name, :title_book, :vidguk, :date)
    end
end

